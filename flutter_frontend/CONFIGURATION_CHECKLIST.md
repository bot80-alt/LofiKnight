# Configuration Checklist - Required Before Launch

## ✅ Fixed Issues (Crash Prevention)

1. ✅ **AdMob initialization is now safe** - Won't crash if not configured
2. ✅ **Internet permission added** - Required for API calls
3. ✅ **AdMob App ID placeholder added** - Using Google test IDs for now
4. ✅ **App labels updated** - Changed to "Lofit"

## 🔧 Required Configuration

### 1. AdMob App ID (REQUIRED for ads to work)

**Current Status:** Using Google's TEST App IDs (for development only)

**What you need:**
- Your actual AdMob App ID from [AdMob Console](https://apps.admob.com/)
- Format: `ca-app-pub-XXXXXXXXXXXXXXXX~YYYYYYYYYY`

**Where to update:**

**Android:** `android/app/src/main/AndroidManifest.xml`
```xml
<meta-data
    android:name="com.google.android.gms.ads.APPLICATION_ID"
    android:value="ca-app-pub-YOUR_APP_ID_HERE"/>
```

**iOS:** `ios/Runner/Info.plist`
```xml
<key>GADApplicationIdentifier</key>
<string>ca-app-pub-YOUR_APP_ID_HERE</string>
```

**Question for you:** Do you have your AdMob App ID, or should I keep using test IDs for now?

---

### 2. Ad Unit IDs (REQUIRED for specific ad types)

**Current Status:** Using Google's TEST Ad Unit IDs

**Location:** `lib/constants/app_constants.dart`

**What you need from AdMob Console:**
- Rewarded Ad Unit ID
- Interstitial Ad Unit ID  
- Banner Ad Unit ID

**Question for you:** Do you have these ad unit IDs, or should I keep using test IDs?

---

### 3. Backend API Configuration

**Current Status:** Hardcoded to `http://localhost:3001/api`

**Location:** `lib/constants/app_constants.dart`

**Questions:**
- Is your backend running on `localhost:3001`? ✅ (Using this)
- Do you need a production API URL? 
- Should API URL be configurable via environment variables?

---

### 4. Smart Contract Configuration

**Current Status:** Hardcoded values
- Contract Address: `0xd43dc5f84320B34149Be4D0602F862DdD61A45CF`
- RPC URL: `https://rpc.testnet.citrea.xyz`

**Location:** `lib/constants/app_constants.dart`

**Questions:**
- Are these values correct? ✅ (Using these)
- Do you need these to be configurable?

---

## 🚨 Potential Crash Causes (Now Fixed)

1. ✅ **AdMob initialization** - Now wrapped in try-catch
2. ✅ **Missing internet permission** - Added to AndroidManifest.xml
3. ✅ **Missing AdMob App ID** - Added test IDs as placeholders
4. ✅ **App label mismatch** - Updated to "Lofit"

## 📋 Pre-Launch Checklist

- [ ] Replace AdMob TEST App ID with your real App ID (Android)
- [ ] Replace AdMob TEST App ID with your real App ID (iOS)
- [ ] Replace TEST Ad Unit IDs with your real Ad Unit IDs
- [ ] Verify backend API URL is correct
- [ ] Verify smart contract address is correct
- [ ] Test app on Android device/emulator
- [ ] Test app on iOS device/simulator (if applicable)

## 🧪 Testing

The app should now launch without crashing. AdMob will use test ads until you provide real IDs.

To test:
```bash
cd flutter_frontend
flutter pub get
flutter run
```

## ❓ Questions for You

1. **Do you have your AdMob App ID?** 
   - If yes, provide it and I'll update the config files
   - If no, I'll keep test IDs (ads won't generate revenue but app will work)

2. **Do you have your Ad Unit IDs?**
   - If yes, provide them and I'll update the constants
   - If no, I'll keep test IDs

3. **Is the backend API URL correct?**
   - Current: `http://localhost:3001/api`
   - Should it be different for production?

4. **Are the smart contract values correct?**
   - Current contract: `0xd43dc5f84320B34149Be4D0602F862DdD61A45CF`
   - Current RPC: `https://rpc.testnet.citrea.xyz`

