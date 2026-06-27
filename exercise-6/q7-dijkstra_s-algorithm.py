# *Q7.* You are given a network of n nodes, labeled from 1 to n. 
# You are also given times, a list of directed travel times where times[i] = (ui, vi, wi). 
# Write a function to find the minimum time it takes for a signal sent from a given source 
# node k to reach all nodes. 
# If it is impossible for all nodes to receive the signal, return -1. 
# Requirement: Use an adjacency list representation and an 
# efficient priority queue (Min-Heap).

# n = num of nodes
# k = key
# u = edge start
# v = where it ends
# w = weight
# nn = neighbor_node
# nnc = neighbor node cost

from collections import defaultdict
import heapq

def network_delay_time(times, n, k):
    # adjacency list
    adj = defaultdict(list)

    for u, v , w in times:
        adj[u].append((v, w))

    min_times = {}
    min_heap = [(0, k)] # (cost to node, node)

    while min_heap:
        cost_to_node, node = heapq.heappop(min_heap)

        if node in min_times:
            continue

        min_times[node] = cost_to_node

        for nn, nnc in adj[node]:
            if nn not in min_times:
                heapq.heappush(min_heap, (cost_to_node + nnc, nn))

    if len(min_times) == n:
        return max(min_times.values())
    else:
        return -1

times1 = [[2,1,1],[2,3,1],[3,4,1]] 
n1 = 4
k1 = 2
print(network_delay_time(times1, n1, k1))

times2 =[[1,2,1]]
n2 = 2
k2 = 1
print(network_delay_time(times2, n2, k2))

times3 =[[1,2,1]]
n3 = 2
k3 = 2
print(network_delay_time(times3, n3, k3))
