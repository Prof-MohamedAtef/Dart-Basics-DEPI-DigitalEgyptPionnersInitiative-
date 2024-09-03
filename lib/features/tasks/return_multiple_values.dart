
Map<String, double> calculateStatistics(List<double> numbers) {
  double sum = numbers.reduce((a, b) => a + b);
  double average = sum / numbers.length;
  double max = numbers.reduce((a, b) => a > b ? a : b);
  return {'sum': sum, 'average': average, 'max': max};
}

