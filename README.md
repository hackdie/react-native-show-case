
# react-native-show-case

## Getting started

`$ npm install react-native-show-case --save`

### Mostly automatic installation

`$ react-native link react-native-show-case`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-show-case` and add `RNShowCase.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNShowCase.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNShowCasePackage;` to the imports at the top of the file
  - Add `new RNShowCasePackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-show-case'
  	project(':react-native-show-case').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-show-case/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-show-case')
  	```


## Usage
```javascript

import {
  View,
  Text,
  findNodeHandle,
} from 'react-native';
import RNShowCase from 'react-native-show-case';

...

componentDidMount = () => {
    const handleId = findNodeHandle(this.superRef);
    RNShowCase.show(handleId, 'Title', 'Description fuck yea!!!');
}

...

render = () => {
return (
	<View style={...}>
	<Text ref={r => {this.superRef = r}}> Show showcase here </Text>
	</View>)
} 

```
  

## Credits

This project is just a wraper for `https://github.com/rahuliyer95/iShowcase` and `https://github.com/mreram/ShowCaseView` 


License
RNShowCase is available under the MIT license. See the LICENSE file for more info.