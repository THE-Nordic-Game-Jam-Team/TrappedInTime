var arr

arr[UPGRADE_TYPE.AXE, 1] = costArr(0, 0, 0) // This is the first axe, which you start with. That's why it's free
arr[UPGRADE_TYPE.AXE, 2] = costArr(20, 0, 0)
arr[UPGRADE_TYPE.AXE, 3] = costArr(0, 20, 0)
arr[UPGRADE_TYPE.AXE, 4] = costArr(0, 0, 20)
arr[UPGRADE_TYPE.AXE, 5] = costArr(20, 16, 12)

arr[UPGRADE_TYPE.TELEPORT, 1] = costArr(5, 0, 0)
arr[UPGRADE_TYPE.TELEPORT, 2] = costArr(10, 5, 0)
arr[UPGRADE_TYPE.TELEPORT, 3] = costArr(15, 10, 5)

arr[UPGRADE_TYPE.SHIELD, 1] = costArr(22, 0, 0)
arr[UPGRADE_TYPE.SHIELD, 2] = costArr(18, 15, 0)
arr[UPGRADE_TYPE.SHIELD, 3] = costArr(30, 16, 6)

arr[UPGRADE_TYPE.MOVE_SPEED, 1] = costArr(15, 0, 0)
arr[UPGRADE_TYPE.MOVE_SPEED, 2] = costArr(15, 10, 0)
arr[UPGRADE_TYPE.MOVE_SPEED, 3] = costArr(15, 15, 10)

arr[UPGRADE_TYPE.MAGNET, 1] = costArr(17, 0, 0)
arr[UPGRADE_TYPE.MAGNET, 2] = costArr(0, 19, 0)
arr[UPGRADE_TYPE.MAGNET, 3] = costArr(15, 5, 15)

arr[UPGRADE_TYPE.TEAR, 1] = costArr(25, 0, 0)
arr[UPGRADE_TYPE.TEAR, 2] = costArr(0, 25, 0)
arr[UPGRADE_TYPE.TEAR, 3] = costArr(0, 0, 22)
arr[UPGRADE_TYPE.TEAR, 4] = costArr(15, 15, 15)
arr[UPGRADE_TYPE.TEAR, 5] = costArr(30, 30, 0)
arr[UPGRADE_TYPE.TEAR, 6] = costArr(0, 20, 10)
arr[UPGRADE_TYPE.TEAR, 7] = costArr(20, 20, 20)

return arr