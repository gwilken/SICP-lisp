
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

let t1 = makeTree(1, [makeTree(2, leaves(3, 4)), makeTree(5, leaves(6, 7, 8))])

// printTree(t1)


function treeMap(func, tree) {
  return makeTree( 
    func(tree.datum),
    tree.children.map((child) => treeMap(func, child)))
}

function square(x) {
  return x * x
}

let t2 = treeMap(square, t1)

printTree(t2)

