/*
 * Copyright (c) 2023 - 2025 Chair for Design Automation, TUM
 * Copyright (c) 2025 Munich Quantum Software Company GmbH
 * All rights reserved.
 *
 * SPDX-License-Identifier: MIT
 *
 * Licensed under the MIT License
 */

#include "dd/Edge.hpp"

#include <deque>

namespace dd {
template <class Node> class BreadthFirstIterator {
public:
  using difference_type = std::ptrdiff_t;
  using value_type = Node;

  BreadthFirstIterator() = default;
  explicit BreadthFirstIterator(const Edge<Node>& edge) {
    q.emplace_back(edge.p);
  }

  Node& operator*() { return *q.front(); }
  Node* operator->() { return q.front(); }

  BreadthFirstIterator operator++() {
    if (!q.empty()) {
      const Node* node = q.front();
      for (const auto& edge : node->e) {
        if (!edge.isTerminal()) {
          const auto it = std::find(q.begin(), q.end(), edge.p);
          if (it == q.end()) {
            q.emplace_back(edge.p);
          }
        }
      }
      q.pop_front();
    }
    return *this;
  }
  BreadthFirstIterator operator++(int) {
    auto tmp = *this;
    ++*this;
    return tmp;
  }

  bool operator!=(const BreadthFirstIterator& other) { return q != other.q; }
  bool operator==(const BreadthFirstIterator& other) { return q == other.q; }

private:
  std::deque<Node*> q{};
};
} // namespace dd
