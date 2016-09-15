# rn-live-stream

[![NPM Version][npm-image]][npm-url]

# Info
This library [LFLiveKit](https://github.com/LaiFengiOS/LFLiveKit/issues)

Only Support iOS

## Add it to your project

Run `npm install --save rn-live-stream`

### iOS

1. Add RCTLFLiveKit.xcodeproj to Libraries

2. Your project Click

3. Go to General -> Embedded Binaries and add LFLiveKit.framework

4. Linked Frameworks and Libraries add LFLiveKit.framework

## Usage

```javascript
import LiveStream from 'rn-live-stream';

<LiveStream
  started={false} // start your stream
  cameraFronted={true} // camera front or back
  url="rtmp://xxx" // your rtmp publish url
  landscape={false} // landscape mode
  onReady={() => {}} // streaming ready
  onPending={() => {}} // streaming ready to start
  onStart={() => {}} // streaming start
  onError={() => {}} // straming error
  onStop={() => {}} // streaming stop
/>
```

# License
MIT

[npm-image]: https://img.shields.io/npm/v/rn-live-stream.svg
[npm-url]: https://www.npmjs.com/package/rn-live-stream

