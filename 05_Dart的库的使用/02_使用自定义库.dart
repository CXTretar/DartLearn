/**
 * 1. 可以通过 as 关键字给库起别名,就不会与自身同名方法冲突
 * 2. 默认情况下在导入一个库时,是导入这个库中的所有的公共内容,包括所有属性和方法
 *   2.1 show: 执行要导入的内容
 *   2.2 hide: 隐藏某个要导入的内容,导入其他内容
 * 3. 公共的dart文件的抽取: export
 */

import 'utils/math_utils.dart' as mUtils;
// import 'utils/math_utils.dart' hide mul;
// import 'utils/math_utils.dart' show sum;

import 'utils/date_utils.dart';
import 'utils/utils.dart';

main(List<String> args) {
  print(mUtils.sum(20, 30));
  print(dateFormat());
}

void sum(num1, num2) {
  print(num1 + num2);
}
