function square(x) {
  return x * x
}

const bnode = (datum = null, left = null, right = null) => ({datum, left, right});

const makeBtree = bnode;


const t3 = 
  makeBtree(10,
    makeBtree(8),
    makeBtree(15,
      makeBtree(11),
      makeBtree(17, 
        null,
        makeBtree(20)
      ) 
    )
  )

console.log(JSON.stringify(t3, undefined, 2))


function mapBtree(func, tree) {
  if (!tree || !tree.datum) {
    return null
  }

  return makeBtree(
    func(tree.datum),
    tree.left ? mapBtree(func, tree.left) : null,
    tree.right ? mapBtree(func, tree.right) : null
  )
}

console.log('****')

const t4 = mapBtree(square, t3)

console.log(JSON.stringify(t4, undefined, 2))

