function square(x) {
  return x * x
}

///////////////

const node = (datum, children = []) => ({datum, children}) 

const makeTree = node


function leaves() {
  if (arguments.length) {
    return [...arguments].map((node) => {
      return makeTree(node)
    })
  }
}


function countLength(t) {
  if (t.tail === null) {
    return 0
  }
  
  if (typeof t.head === 'object') {
    return countLength(t.head) + countLength(t.tail)
  } else {
    return 1
  }
}

function printTree(tree) {
  console.log(JSON.stringify(tree, undefined, 2))
}

let t1 = makeTree(1,
  [makeTree(2, [makeTree(3, [makeTree(4, [makeTree(5, [makeTree(6, [])])])]), makeTree(7, [makeTree(8, [])])]), makeTree(9, leaves(10, 11, 12)), makeTree(13, [])]
)

printTree(t1)


function treeMap(func, tree) {
  return makeTree( 
    func(tree.datum),
    tree.children.map((child) => treeMap(func, child)))
}

// depth first traversal
function printDatum(tree) {
  if (tree.datum) {
    console.log(tree.datum)
  }

  tree.children.forEach(childTree => printDatum(childTree))
}

// breadth first
function bfsPrint(tree) { 
  function bfsIter(queue) {
    if (queue.length === 0) {
      return 
    }

    let task = queue[0]
    console.log(task.datum)

    bfsIter([...queue.slice(1), ...task.children])
  } 

  return bfsIter(tree.children)
}


// breadth first search
function bfsSearch(tree, target) {
  if (tree.datum === target) {
    return 0
  }

  function bfsIter(queue, level) {
    if (queue.length === 0) {
      return 
    }

    let task = queue[0]
    console.log(task.datum)

    if (task.datum === target) {
      console.log('eureka!')
      return target
    }

    bfsIter([...queue.slice(1), ...task.children])
  } 

  return bfsIter(tree.children)
}


// depth first search
function dfsSearch(tree, target) {
  console.log(tree.datum)

  if (tree.datum === target) {
    console.log('eureka!')
    return target
  }

  tree.children.forEach(childTree => dfsSearch(childTree, target))
}



bfsSearch(t1, 12)

dfsSearch(t1, 12)

let t2 = treeMap(square, t1)

// printTree(t2)

// printDatum(t2)
