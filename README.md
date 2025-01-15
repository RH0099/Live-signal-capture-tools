### *শক্তিশালী Non-Root Network Scanner (Termux)*


### **কোডের বৈশিষ্ট্য**
1. **রিয়েল-টাইম স্ক্যানিং:**  
   প্রতি ৫ সেকেন্ড পর পর নতুন নেটওয়ার্ক তথ্য সংগ্রহ করবে।  

2. **ফলাফলের ফরম্যাটিং:**  
   - **SSID (নেটওয়ার্ক নাম)**  
   - **Signal Strength (RSSI)**  
   - **Frequency (MHz)**  
   ফলাফল সুন্দরভাবে সাজানো থাকবে এবং `sort` কমান্ডের মাধ্যমে সিগন্যাল শক্তি অনুযায়ী সাজানো হবে।  

3. **Dependency Check:**  
   যদি `termux-api` ইনস্টল না থাকে, এটি স্বয়ংক্রিয়ভাবে ইনস্টল করবে।  

4. **সরাসরি JSON ডেটা প্রক্রিয়াকরণ:**  
   `jq` টুল ব্যবহার করে JSON ডেটা সরাসরি ফরম্যাট করা হয়।  

---

### **ধাপে ধাপে সেটআপ এবং ব্যবহার**

#### ১. **প্রয়োজনীয় প্যাকেজ ইনস্টল করুন**
```bash

pkg update
pkg upgrade
pkg instoll git
pkg instoll python 
pkg install termux-api jq -y

```

#### ২. **git ক্লোন করুন**
```bash

git clone https://github.com/RH0099/Live-signal-capture-tools.git

```
#### ৩. **সেই ডিরেক্টরিতে যান**
```bash

cd Live-signal-capture-tools

```
#### ৪. **ফাইল এক্সিকিউটেবল করুন**
```bash

chmod +x capture.sh

```

#### ৫. **স্ক্রিপ্ট চালান**
```bash

./capture.sh

```

---

### **স্ক্রিপ্ট আউটপুট উদাহরণ**
```
===========================================
🔥 Powerful Non-Root Network Scanner 🔥
===========================================
SSID            |       Signal: -45dBm    |       Frequency: 2412MHz
MyWiFi          |       Signal: -60dBm    |       Frequency: 2437MHz
NeighborWiFi    |       Signal: -70dBm    |       Frequency: 2462MHz
===========================================
[*] Next scan will start in 5 seconds...
```

---

### **নোট**
1. **Signal Strength (RSSI):**  
   - **-30 dBm**: খুব শক্তিশালী।  
   - **-60 dBm**: গড় মান।  
   - **-90 dBm**: দুর্বল।  

2. **আইনি সতর্কতা:**  
   এটি শুধুমাত্র আপনার ডিভাইসে নেটওয়ার্ক পর্যবেক্ষণের জন্য।
   অন্যের অনুমতি ছাড়া নেটওয়ার্কে প্রবেশ করা বা মনিটরিং করা আইনের লঙ্ঘন।  


