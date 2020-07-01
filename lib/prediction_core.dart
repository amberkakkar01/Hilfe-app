import 'package:pytorch_mobile/enums/dtype.dart';
import 'package:pytorch_mobile/model.dart';
import 'package:pytorch_mobile/pytorch_mobile.dart';
import 'constants.dart';

class PredictionCore {
  int max(List a) {
    dynamic max = a[0];
    int pos = 0;

    for (int i = 1; i < a.length; i++) {
      if (a[i] > max) {
        max = a[i];
        pos = i;
      }
    }
    print('The maximum probability with the label $pos is $max');
    return pos;
  }

  String decodeLabelDisease(int label) {
    return labelToDisease[label];
  }

  List encodeLabelSymptom(List symptomList) {
    List<int> labelList = [];
    for (String x in symptomList) {
      labelList.add(symptomsToLabel[x]);
    }
    return labelList;
  }

  Future<String> computeDisease(List sample) async {
    // List<double> sample = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 35, 0, 0, 0, 0];

    Model diseaseClassifier =
        await PyTorchMobile.loadModel('assets/models/model.pt');

    List prediction =
        await diseaseClassifier.getPrediction(sample, [17], DType.float32);
    
  }
}
