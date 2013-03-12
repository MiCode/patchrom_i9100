.class Lcom/android/server/ThermistorObserver;
.super Landroid/os/UEventObserver;
.source "ThermistorObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ThermistorObserver$SiopIntentReceiver;,
        Lcom/android/server/ThermistorObserver$SIOPLevel;,
        Lcom/android/server/ThermistorObserver$TmuState;
    }
.end annotation


# static fields
.field private static final ACL_ON_OFF_PATH:Ljava/lang/String; = "/sys/class/lcd/panel/siop_enable"

.field public static final ACTION_CP_SIOP_LEVEL:Ljava/lang/String; = "android.intent.action.CP_SIOP_LEVEL"

.field public static final ACTION_MAX_BRIGHTNESS_CHANGED:Ljava/lang/String; = "android.intent.action.MAX_BRIGHTNESS_CHANGED"

.field public static final ACTION_SIOP_CONDITION_SET_BY_TESTAPP:Ljava/lang/String; = "android.intent.action.SIOP_CONDITION_SET_BY_TESTAPP"

.field public static final ACTION_SIOP_LEVEL_CHANGED:Ljava/lang/String; = "android.intent.action.SIOP_LEVEL_CHANGED"

.field private static final BATT_CHARGING_HYSTERESYS_LOWER:I = 0x14

.field private static final BATT_CHARGING_HYSTERESYS_UPPER:I = 0x19

.field private static final BATT_MAX_CHARGING_LEVEL_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/siop_level"

.field private static final BATT_MAX_CHARGING_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/siop_activated"

.field private static final BRIGHTNESS_LIMIT_VALUE:I = 0xe6

.field private static final BRIGHTNESS_NORMAL_VALUE:I = -0x1

.field private static final CPU_MAX_CORE_PATH:Ljava/lang/String; = "/sys/devices/system/cpu/cpufreq/pegasusq/max_cpu_lock"

.field public static final EXTRA_CP_SIOP_LEVEL:Ljava/lang/String; = "cp_siop_level"

.field public static final EXTRA_FLASH_LED_DISABLE:Ljava/lang/String; = "flash_led_disable"

.field public static final EXTRA_MAX_BRIGHTNESS:Ljava/lang/String; = "max_brightness"

.field public static final EXTRA_SIOP_CONDITION_SET_BY_TESTAPP_BRIGHTNESS:Ljava/lang/String; = "brightness"

.field public static final EXTRA_SIOP_CONDITION_SET_BY_TESTAPP_CHARGING_CURRENT:Ljava/lang/String; = "charging_current"

.field public static final EXTRA_SIOP_CONDITION_SET_BY_TESTAPP_CPU_MAX_CORE:Ljava/lang/String; = "cpu_max_core"

.field public static final EXTRA_SIOP_CONDITION_SET_BY_TESTAPP_FLASH_LED:Ljava/lang/String; = "flash_led"

.field public static final EXTRA_SIOP_CONDITION_SET_BY_TESTAPP_FREQUENCY:Ljava/lang/String; = "frequency"

.field public static final EXTRA_SIOP_CONDITION_SET_BY_TESTAPP_LCD_FPS:Ljava/lang/String; = "lcd_fps"

.field private static final NA:I = -0x1

.field private static final TAG:Ljava/lang/String; = null

.field private static final THERMISTOR_UEVENT_KEY:Ljava/lang/String; = "SIOP_LEVEL"

.field private static final THERMISTOR_UEVENT_MATCH:Ljava/lang/String; = "SIOP_LEVEL"

.field private static final TMU_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/platform/s5p-tmu"

.field private static final mConfigurableControlCondition:Z = true

.field private static final mDebugLog:Z = true

.field private static final mDebugLogTestApp:Z


# instance fields
.field private mBatteryBR:Landroid/content/BroadcastReceiver;

.field private mBatteryBRForAMOLED:Landroid/content/BroadcastReceiver;

.field private mBoolAMOLED:Z

.field private mBoolControlACL:Z

.field private mBoolControlBrightness:Z

.field private mBoolControlCPUCore:Z

.field private mBoolControlChargingCurrent:Z

.field private mBoolControlFlashLed:Z

.field private mBoolControlFrequency:Z

.field private mBoolControlLcdFPS:Z

.field private mBoolCurrentLimitBrightnessForAMOLED:Z

.field private mBoolSupportSIOP:Z

.field private final mContext:Landroid/content/Context;

.field private mDVFSMaxLock:Landroid/os/PowerManager$DVFSLock;

.field private mIntCurrentSIOPLevel:I

.field private mIntentMaxBrightnessChanged:Landroid/content/Intent;

.field private mIntentSIOPLevelChanged:Landroid/content/Intent;

.field private mIsChargingCurrentLimited:Z

.field private mIsLaunchedLimitCharging:Z

.field private mLastLevelFromCP:I

.field private mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;

.field private mLatestBatteryLevel:I

.field private mLatestMaxBrightness:I

.field private mPM:Landroid/os/PowerManager;

.field private mPMS:Lcom/android/server/PowerManagerService;

.field private mSIOPLevelSetByTestApp:Landroid/content/BroadcastReceiver;

.field mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

.field private mSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/android/server/ThermistorObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    .locals 15
    .parameter "context"
    .parameter "pms"

    .prologue
    .line 181
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 34
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mSystemReady:Z

    .line 36
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I

    .line 37
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mIsChargingCurrentLimited:Z

    .line 44
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/ThermistorObserver;->mLatestMaxBrightness:I

    .line 53
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlFrequency:Z

    .line 54
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlCPUCore:Z

    .line 55
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlBrightness:Z

    .line 56
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlChargingCurrent:Z

    .line 57
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlLcdFPS:Z

    .line 58
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlFlashLed:Z

    .line 59
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlACL:Z

    .line 61
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolSupportSIOP:Z

    .line 62
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolAMOLED:Z

    .line 63
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolCurrentLimitBrightnessForAMOLED:Z

    .line 65
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/android/server/ThermistorObserver$SIOPLevel;

    iput-object v1, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    .line 67
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;

    .line 68
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mIsLaunchedLimitCharging:Z

    .line 160
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAX_BRIGHTNESS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/ThermistorObserver;->mIntentMaxBrightnessChanged:Landroid/content/Intent;

    .line 161
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SIOP_LEVEL_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/ThermistorObserver;->mIntentSIOPLevelChanged:Landroid/content/Intent;

    .line 175
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/ThermistorObserver;->mIntCurrentSIOPLevel:I

    .line 178
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ThermistorObserver;->mPM:Landroid/os/PowerManager;

    .line 179
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ThermistorObserver;->mDVFSMaxLock:Landroid/os/PowerManager$DVFSLock;

    .line 282
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/ThermistorObserver;->mLastLevelFromCP:I

    .line 624
    new-instance v1, Lcom/android/server/ThermistorObserver$1;

    invoke-direct {v1, p0}, Lcom/android/server/ThermistorObserver$1;-><init>(Lcom/android/server/ThermistorObserver;)V

    iput-object v1, p0, Lcom/android/server/ThermistorObserver;->mBatteryBR:Landroid/content/BroadcastReceiver;

    .line 670
    new-instance v1, Lcom/android/server/ThermistorObserver$2;

    invoke-direct {v1, p0}, Lcom/android/server/ThermistorObserver$2;-><init>(Lcom/android/server/ThermistorObserver;)V

    iput-object v1, p0, Lcom/android/server/ThermistorObserver;->mBatteryBRForAMOLED:Landroid/content/BroadcastReceiver;

    .line 694
    new-instance v1, Lcom/android/server/ThermistorObserver$3;

    invoke-direct {v1, p0}, Lcom/android/server/ThermistorObserver$3;-><init>(Lcom/android/server/ThermistorObserver;)V

    iput-object v1, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevelSetByTestApp:Landroid/content/BroadcastReceiver;

    .line 182
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;

    .line 183
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/server/ThermistorObserver;->mPMS:Lcom/android/server/PowerManagerService;

    .line 185
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mPM:Landroid/os/PowerManager;

    if-nez v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/ThermistorObserver;->mPM:Landroid/os/PowerManager;

    .line 190
    :cond_0
    invoke-direct {p0}, Lcom/android/server/ThermistorObserver;->checkSupportSIOP()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolSupportSIOP:Z

    .line 192
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolAMOLED:Z

    .line 203
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolAMOLED:Z

    if-eqz v1, :cond_2

    .line 204
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlFrequency:Z

    .line 205
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlCPUCore:Z

    .line 206
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlBrightness:Z

    .line 207
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlChargingCurrent:Z

    .line 208
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlLcdFPS:Z

    .line 209
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlFlashLed:Z

    .line 233
    :goto_1
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 234
    .local v12, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CP_SIOP_LEVEL"

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/ThermistorObserver$SiopIntentReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/ThermistorObserver$SiopIntentReceiver;-><init>(Lcom/android/server/ThermistorObserver;Lcom/android/server/ThermistorObserver$1;)V

    invoke-virtual {v1, v2, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 237
    return-void

    .line 195
    .end local v12           #filter:Landroid/content/IntentFilter;
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolSupportSIOP:Z

    .line 196
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolAMOLED:Z

    goto :goto_0

    .line 211
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolSupportSIOP:Z

    if-eqz v1, :cond_3

    .line 212
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlFrequency:Z

    .line 213
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlCPUCore:Z

    .line 214
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlBrightness:Z

    .line 215
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlChargingCurrent:Z

    .line 216
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlLcdFPS:Z

    .line 217
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlFlashLed:Z

    .line 221
    iget-object v13, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    const/4 v14, 0x0

    new-instance v1, Lcom/android/server/ThermistorObserver$SIOPLevel;

    const-string v3, "ReleasedSIOP"

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/16 v9, 0x3c

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v11}, Lcom/android/server/ThermistorObserver$SIOPLevel;-><init>(Lcom/android/server/ThermistorObserver;Ljava/lang/String;IIIIIIZZ)V

    aput-object v1, v13, v14

    .line 222
    iget-object v13, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    const/4 v14, 0x1

    new-instance v1, Lcom/android/server/ThermistorObserver$SIOPLevel;

    const-string v3, "Level1"

    const/4 v4, -0x1

    const v5, 0xc3500

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/16 v9, 0x28

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v2, p0

    invoke-direct/range {v1 .. v11}, Lcom/android/server/ThermistorObserver$SIOPLevel;-><init>(Lcom/android/server/ThermistorObserver;Ljava/lang/String;IIIIIIZZ)V

    aput-object v1, v13, v14

    .line 223
    iget-object v13, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    const/4 v14, 0x2

    new-instance v1, Lcom/android/server/ThermistorObserver$SIOPLevel;

    const-string v3, "Level2"

    const/4 v4, -0x1

    const v5, 0xc3500

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/16 v8, 0xe6

    const/16 v9, 0x28

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v2, p0

    invoke-direct/range {v1 .. v11}, Lcom/android/server/ThermistorObserver$SIOPLevel;-><init>(Lcom/android/server/ThermistorObserver;Ljava/lang/String;IIIIIIZZ)V

    aput-object v1, v13, v14

    .line 224
    iget-object v13, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    const/4 v14, 0x3

    new-instance v1, Lcom/android/server/ThermistorObserver$SIOPLevel;

    const-string v3, "Level3"

    const/4 v4, -0x1

    const v5, 0x7a120

    const/4 v6, 0x2

    const/4 v7, 0x2

    const/16 v8, 0xe6

    const/16 v9, 0x28

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v2, p0

    invoke-direct/range {v1 .. v11}, Lcom/android/server/ThermistorObserver$SIOPLevel;-><init>(Lcom/android/server/ThermistorObserver;Ljava/lang/String;IIIIIIZZ)V

    aput-object v1, v13, v14

    .line 225
    iget-object v13, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    const/4 v14, 0x4

    new-instance v1, Lcom/android/server/ThermistorObserver$SIOPLevel;

    const-string v3, "Level4"

    const/4 v4, -0x1

    const v5, 0x7a120

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/16 v8, 0xe6

    const/16 v9, 0x28

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v2, p0

    invoke-direct/range {v1 .. v11}, Lcom/android/server/ThermistorObserver$SIOPLevel;-><init>(Lcom/android/server/ThermistorObserver;Ljava/lang/String;IIIIIIZZ)V

    aput-object v1, v13, v14

    .line 226
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;

    goto/16 :goto_1

    .line 229
    :cond_3
    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v2, "DO NOT Support Thermistor Observer."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private final LaunchLimitChargingCurrent(I)V
    .locals 6
    .parameter "limitLevel"

    .prologue
    const/4 v5, -0x1

    .line 487
    iget-boolean v2, p0, Lcom/android/server/ThermistorObserver;->mBoolControlChargingCurrent:Z

    if-nez v2, :cond_0

    .line 488
    sget-object v2, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v3, "LaunchLimitChargingCurrent : NOT SUPPORTED"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :goto_0
    return-void

    .line 492
    :cond_0
    monitor-enter p0

    .line 493
    if-nez p1, :cond_3

    const/4 v0, 0x0

    .line 494
    .local v0, bLimit:Z
    :goto_1
    :try_start_0
    sget-object v2, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LaunchLimitChargingCurrent : prev : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/ThermistorObserver;->mIsLaunchedLimitCharging:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  current : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  limitLevel : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-boolean v2, p0, Lcom/android/server/ThermistorObserver;->mIsLaunchedLimitCharging:Z

    if-eq v2, v0, :cond_2

    .line 497
    if-eqz v0, :cond_4

    .line 498
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 499
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 500
    iget-object v2, p0, Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/ThermistorObserver;->mBatteryBR:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 502
    iget v2, p0, Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I

    if-eq v2, v5, :cond_1

    iget v2, p0, Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I

    const/16 v3, 0x14

    if-le v2, v3, :cond_1

    .line 503
    invoke-direct {p0, p1}, Lcom/android/server/ThermistorObserver;->limitChargingCurrent(I)V

    .line 512
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_1
    :goto_2
    iput-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mIsLaunchedLimitCharging:Z

    .line 514
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 493
    .end local v0           #bLimit:Z
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 507
    .restart local v0       #bLimit:Z
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/ThermistorObserver;->mBatteryBR:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 508
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I

    .line 509
    invoke-direct {p0, p1}, Lcom/android/server/ThermistorObserver;->limitChargingCurrent(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/ThermistorObserver;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/ThermistorObserver;->mPM:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/ThermistorObserver;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/ThermistorObserver;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/ThermistorObserver;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mIsLaunchedLimitCharging:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/ThermistorObserver;)Lcom/android/server/ThermistorObserver$SIOPLevel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/ThermistorObserver;Lcom/android/server/ThermistorObserver$SIOPLevel;)Lcom/android/server/ThermistorObserver$SIOPLevel;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/ThermistorObserver;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/server/ThermistorObserver;->limitChargingCurrent(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/ThermistorObserver;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mIsChargingCurrentLimited:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/ThermistorObserver;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mBoolCurrentLimitBrightnessForAMOLED:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/ThermistorObserver;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/server/ThermistorObserver;->mBoolCurrentLimitBrightnessForAMOLED:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/ThermistorObserver;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/server/ThermistorObserver;->limitBrightness(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/ThermistorObserver;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/server/ThermistorObserver;->mLastLevelFromCP:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/ThermistorObserver;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/android/server/ThermistorObserver;->mLastLevelFromCP:I

    return p1
.end method

.method private final aclOn(Z)V
    .locals 2
    .parameter "bOn"

    .prologue
    .line 566
    iget-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mBoolControlACL:Z

    if-nez v0, :cond_0

    .line 567
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v1, "ACL contol : NOT SUPPORTED"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :goto_0
    return-void

    .line 570
    :cond_0
    const-string v1, "/sys/class/lcd/panel/siop_enable"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v0}, Lcom/android/server/ThermistorObserver;->fileWriteInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private final checkSupportSIOP()Z
    .locals 6

    .prologue
    .line 576
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/devices/platform/sec-thermistor/temperature"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 577
    .local v2, siopFile:Ljava/io/File;
    const/4 v0, 0x0

    .line 580
    .local v0, boolExist:Z
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 586
    :goto_0
    sget-object v3, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkSupportSIOP() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    return v0

    .line 581
    :catch_0
    move-exception v1

    .line 582
    .local v1, e:Ljava/security/AccessControlException;
    sget-object v3, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v4, "checkSupportSIOP() : Access Denied"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static fileWriteInt(Ljava/lang/String;I)V
    .locals 7
    .parameter "filePath"
    .parameter "value"

    .prologue
    .line 591
    const/4 v2, 0x0

    .line 593
    .local v2, out:Ljava/io/FileOutputStream;
    sget-object v4, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileWriteInt : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 603
    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 604
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    .line 613
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 598
    :catch_0
    move-exception v0

    .line 599
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2
    sget-object v4, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v5, "fileWriteInt : file not found"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 605
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 606
    .local v0, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 608
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 609
    :catch_2
    move-exception v1

    .line 610
    .local v1, err:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 605
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #err:Ljava/lang/Exception;
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private final limitBrightness(I)V
    .locals 4
    .parameter "brightness"

    .prologue
    .line 470
    iget-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlBrightness:Z

    if-nez v1, :cond_0

    .line 471
    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v2, "limitBrightness : NOT SUPPORTED"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :goto_0
    return-void

    .line 475
    :cond_0
    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "limitBrightness : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mPMS:Lcom/android/server/PowerManagerService;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, p1}, Lcom/android/server/PowerManagerService;->setMasterBrightnessLimit(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :goto_1
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/ThermistorObserver;->notifyLimitBrightness(IZ)V

    goto :goto_0

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private final limitCPUCore(I)V
    .locals 3
    .parameter "activeCore"

    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mBoolControlCPUCore:Z

    if-nez v0, :cond_0

    .line 447
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v1, "limitCPUCore : NOT SUPPORTED"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :goto_0
    return-void

    .line 451
    :cond_0
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitCPUCore : activeCore : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const-string v0, "/sys/devices/system/cpu/cpufreq/pegasusq/max_cpu_lock"

    invoke-static {v0, p1}, Lcom/android/server/ThermistorObserver;->fileWriteInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private final limitChargingCurrent(I)V
    .locals 4
    .parameter "limitLevel"

    .prologue
    .line 519
    if-nez p1, :cond_0

    .line 520
    const/4 v0, 0x0

    .line 521
    .local v0, siopActivated:I
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mIsChargingCurrentLimited:Z

    .line 529
    :goto_0
    const-string v1, "/sys/class/power_supply/battery/siop_activated"

    invoke-static {v1, v0}, Lcom/android/server/ThermistorObserver;->fileWriteInt(Ljava/lang/String;I)V

    .line 530
    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "limitChargingCurrent : mIsChargingCurrentLimited"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/ThermistorObserver;->mIsChargingCurrentLimited:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " siop activated : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " limitLevel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    return-void

    .line 524
    .end local v0           #siopActivated:I
    :cond_0
    const/4 v0, 0x1

    .line 525
    .restart local v0       #siopActivated:I
    const-string v1, "/sys/class/power_supply/battery/siop_level"

    invoke-static {v1, p1}, Lcom/android/server/ThermistorObserver;->fileWriteInt(Ljava/lang/String;I)V

    .line 526
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mIsChargingCurrentLimited:Z

    goto :goto_0
.end method

.method private final limitFrequency(Landroid/os/PowerManager$DVFSLock;Landroid/os/PowerManager$DVFSLock;)V
    .locals 2
    .parameter "currDVFSLock"
    .parameter "lastDVFSLock"

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mBoolControlFrequency:Z

    if-nez v0, :cond_1

    .line 420
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v1, "limitFrequency : NOT SUPPORTED"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v1, "limitFrequency"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    if-eqz p1, :cond_3

    .line 427
    invoke-virtual {p1}, Landroid/os/PowerManager$DVFSLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    .line 428
    invoke-virtual {p1}, Landroid/os/PowerManager$DVFSLock;->acquire()V

    .line 435
    :cond_2
    :goto_1
    if-eqz p2, :cond_4

    .line 436
    invoke-virtual {p2}, Landroid/os/PowerManager$DVFSLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {p2}, Landroid/os/PowerManager$DVFSLock;->release()V

    goto :goto_0

    .line 432
    :cond_3
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v1, "limitFrequency : currDVFSLock is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 441
    :cond_4
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v1, "limitFrequency : lastDVFSLock is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final notifyLimitBrightness(IZ)V
    .locals 4
    .parameter "brightness"
    .parameter "bForce"

    .prologue
    .line 457
    iget v1, p0, Lcom/android/server/ThermistorObserver;->mLatestMaxBrightness:I

    if-ne v1, p1, :cond_0

    if-eqz p2, :cond_1

    .line 458
    :cond_0
    iput p1, p0, Lcom/android/server/ThermistorObserver;->mLatestMaxBrightness:I

    .line 460
    :try_start_0
    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyLimitBrightness() : brightness : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mIntentMaxBrightnessChanged:Landroid/content/Intent;

    const-string v2, "max_brightness"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 462
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ThermistorObserver;->mIntentMaxBrightnessChanged:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    :cond_1
    :goto_0
    return-void

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v2, "notifyLimitBrightness : intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private final notifyLimitFlashLed(Z)V
    .locals 4
    .parameter "bLimit"

    .prologue
    .line 544
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mIntentSIOPLevelChanged:Landroid/content/Intent;

    const-string v2, "flash_led_disable"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 546
    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyLimitFlashLed() : bLimit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ThermistorObserver;->mIntentSIOPLevelChanged:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    :goto_0
    return-void

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v2, "notifyLimitFlashLed : intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private final systemShutdown()V
    .locals 3

    .prologue
    .line 616
    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v2, "systemShutdown"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 619
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 620
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 621
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 622
    return-void
.end method


# virtual methods
.method changeState(I)V
    .locals 2
    .parameter "levelFromCP"

    .prologue
    const/4 v0, 0x1

    .line 398
    if-gez p1, :cond_0

    .line 399
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v1, "invaild siop level."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :goto_0
    return-void

    .line 404
    :cond_0
    if-lt p1, v0, :cond_1

    .line 405
    invoke-direct {p0, v0}, Lcom/android/server/ThermistorObserver;->aclOn(Z)V

    .line 411
    :goto_1
    const/4 v0, 0x2

    if-lt p1, v0, :cond_2

    .line 412
    const/16 v0, 0xe6

    invoke-direct {p0, v0}, Lcom/android/server/ThermistorObserver;->limitBrightness(I)V

    goto :goto_0

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    iget v1, p0, Lcom/android/server/ThermistorObserver;->mIntCurrentSIOPLevel:I

    aget-object v0, v0, v1

    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->aclOn:Z
    invoke-static {v0}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$1200(Lcom/android/server/ThermistorObserver$SIOPLevel;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ThermistorObserver;->aclOn(Z)V

    goto :goto_1

    .line 414
    :cond_2
    iget-object v0, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    iget v1, p0, Lcom/android/server/ThermistorObserver;->mIntCurrentSIOPLevel:I

    aget-object v0, v0, v1

    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->displayBrightness:I
    invoke-static {v0}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$600(Lcom/android/server/ThermistorObserver$SIOPLevel;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ThermistorObserver;->limitBrightness(I)V

    goto :goto_0
.end method

.method changeState(Lcom/android/server/ThermistorObserver$SIOPLevel;Lcom/android/server/ThermistorObserver$SIOPLevel;)V
    .locals 4
    .parameter "currLevel"
    .parameter "lastLevel"

    .prologue
    const/4 v3, 0x1

    .line 362
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 363
    :cond_0
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeState : currLevel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  lastLevel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :goto_0
    return-void

    .line 367
    :cond_1
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->name:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$500(Lcom/android/server/ThermistorObserver$SIOPLevel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->name:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$500(Lcom/android/server/ThermistorObserver$SIOPLevel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->DVFSMaxLock:Landroid/os/PowerManager$DVFSLock;
    invoke-static {p1}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$800(Lcom/android/server/ThermistorObserver$SIOPLevel;)Landroid/os/PowerManager$DVFSLock;

    move-result-object v0

    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->DVFSMaxLock:Landroid/os/PowerManager$DVFSLock;
    invoke-static {p2}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$800(Lcom/android/server/ThermistorObserver$SIOPLevel;)Landroid/os/PowerManager$DVFSLock;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/ThermistorObserver;->limitFrequency(Landroid/os/PowerManager$DVFSLock;Landroid/os/PowerManager$DVFSLock;)V

    .line 370
    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->cpuMaxCore:I
    invoke-static {p1}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$900(Lcom/android/server/ThermistorObserver$SIOPLevel;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ThermistorObserver;->limitCPUCore(I)V

    .line 371
    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->limitChargingCurrent:I
    invoke-static {p1}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$1000(Lcom/android/server/ThermistorObserver$SIOPLevel;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ThermistorObserver;->LaunchLimitChargingCurrent(I)V

    .line 372
    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->LcdFPS:I
    invoke-static {p1}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$1100(Lcom/android/server/ThermistorObserver$SIOPLevel;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/ThermistorObserver;->limitLcdFPS(I)V

    .line 373
    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->flashLedDisable:Z
    invoke-static {p1}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$700(Lcom/android/server/ThermistorObserver$SIOPLevel;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/ThermistorObserver;->limitFlashLed(Z)V

    .line 376
    iget v0, p0, Lcom/android/server/ThermistorObserver;->mLastLevelFromCP:I

    if-ltz v0, :cond_4

    .line 378
    iget v0, p0, Lcom/android/server/ThermistorObserver;->mLastLevelFromCP:I

    if-lt v0, v3, :cond_2

    .line 379
    invoke-direct {p0, v3}, Lcom/android/server/ThermistorObserver;->aclOn(Z)V

    .line 385
    :goto_1
    iget v0, p0, Lcom/android/server/ThermistorObserver;->mLastLevelFromCP:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 386
    const/16 v0, 0xe6

    invoke-direct {p0, v0}, Lcom/android/server/ThermistorObserver;->limitBrightness(I)V

    goto :goto_0

    .line 381
    :cond_2
    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->aclOn:Z
    invoke-static {p1}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$1200(Lcom/android/server/ThermistorObserver$SIOPLevel;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ThermistorObserver;->aclOn(Z)V

    goto :goto_1

    .line 388
    :cond_3
    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->displayBrightness:I
    invoke-static {p1}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$600(Lcom/android/server/ThermistorObserver$SIOPLevel;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ThermistorObserver;->limitBrightness(I)V

    goto :goto_0

    .line 391
    :cond_4
    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->displayBrightness:I
    invoke-static {p1}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$600(Lcom/android/server/ThermistorObserver$SIOPLevel;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ThermistorObserver;->limitBrightness(I)V

    .line 392
    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->aclOn:Z
    invoke-static {p1}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$1200(Lcom/android/server/ThermistorObserver$SIOPLevel;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ThermistorObserver;->aclOn(Z)V

    goto/16 :goto_0
.end method

.method decisionLevel(I)Lcom/android/server/ThermistorObserver$SIOPLevel;
    .locals 4
    .parameter "temperature"

    .prologue
    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 313
    :cond_0
    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decisionLevel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    aget-object v3, v3, v0

    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->name:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$500(Lcom/android/server/ThermistorObserver$SIOPLevel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    aget-object v1, v1, v0

    return-object v1

    .line 307
    :cond_1
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->temperatureThreshold:I
    invoke-static {v1}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$400(Lcom/android/server/ThermistorObserver$SIOPLevel;)I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final limitFlashLed(Z)V
    .locals 2
    .parameter "bLimit"

    .prologue
    .line 554
    iget-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mBoolControlFlashLed:Z

    if-nez v0, :cond_0

    .line 555
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v1, "limitFlashLed : NOT SUPPORTED"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :goto_0
    return-void

    .line 561
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/ThermistorObserver;->notifyLimitFlashLed(Z)V

    goto :goto_0
.end method

.method public final limitLcdFPS(I)V
    .locals 3
    .parameter "FPS"

    .prologue
    .line 534
    iget-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mBoolControlLcdFPS:Z

    if-nez v0, :cond_0

    .line 535
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v1, "limitLcdFPS : NOT SUPPORTED"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :goto_0
    return-void

    .line 539
    :cond_0
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitLcdFPS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, -0x1

    .line 242
    sget-object v4, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Thermistor UEVENT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    monitor-enter p0

    .line 246
    const/4 v2, 0x0

    .line 248
    .local v2, currentSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;
    :try_start_0
    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SIOP_LEVEL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eq v4, v7, :cond_1

    .line 250
    const/4 v1, -0x1

    .line 251
    .local v1, currentLevelfromDriver:I
    :try_start_1
    const-string v4, "SIOP_LEVEL"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 252
    iget-object v4, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    aget-object v2, v4, v1

    .line 255
    iput v1, p0, Lcom/android/server/ThermistorObserver;->mIntCurrentSIOPLevel:I

    .line 257
    iget-object v4, p0, Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;

    if-eq v2, v4, :cond_0

    .line 258
    iget-object v4, p0, Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;

    invoke-virtual {p0, v2, v4}, Lcom/android/server/ThermistorObserver;->changeState(Lcom/android/server/ThermistorObserver$SIOPLevel;Lcom/android/server/ThermistorObserver$SIOPLevel;)V

    .line 259
    iput-object v2, p0, Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 278
    .end local v1           #currentLevelfromDriver:I
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 279
    return-void

    .line 261
    .restart local v1       #currentLevelfromDriver:I
    :catch_0
    move-exception v3

    .line 262
    .local v3, e:Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not parse SIOP_LEVEL from event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 278
    .end local v1           #currentLevelfromDriver:I
    .end local v3           #e:Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 265
    :cond_1
    :try_start_3
    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DEVPATH=/devices/platform/s5p-tmu"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v4

    if-eq v4, v7, :cond_2

    .line 267
    :try_start_4
    const-string v4, "TMUSTATE"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 268
    .local v0, TMU_STATE:I
    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/android/server/ThermistorObserver;->systemShutdown()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 271
    .end local v0           #TMU_STATE:I
    :catch_1
    move-exception v3

    .line 272
    .restart local v3       #e:Ljava/lang/NumberFormatException;
    :try_start_5
    sget-object v4, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not parse TMUSTATE from event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 276
    .end local v3           #e:Ljava/lang/NumberFormatException;
    :cond_2
    sget-object v4, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v5, "Thermistor : onUEvent : ERROR : SHOULD NOT BE HERE!!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method systemReady()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 320
    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v2, "systemReady()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iput-boolean v3, p0, Lcom/android/server/ThermistorObserver;->mSystemReady:Z

    .line 323
    iget-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolAMOLED:Z

    if-eqz v1, :cond_1

    .line 324
    const/4 v1, -0x1

    invoke-direct {p0, v1, v3}, Lcom/android/server/ThermistorObserver;->notifyLimitBrightness(IZ)V

    .line 326
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 327
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 328
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ThermistorObserver;->mBatteryBRForAMOLED:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 329
    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v2, "registerReceiver for mBatteryBRForAMOLED."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    iput-boolean v3, p0, Lcom/android/server/ThermistorObserver;->mBoolControlACL:Z

    .line 355
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 356
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIOP_CONDITION_SET_BY_TESTAPP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 357
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevelSetByTestApp:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 359
    return-void

    .line 331
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolSupportSIOP:Z

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;

    if-eqz v1, :cond_2

    .line 333
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;

    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->displayBrightness:I
    invoke-static {v1}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$600(Lcom/android/server/ThermistorObserver$SIOPLevel;)I

    move-result v1

    invoke-direct {p0, v1, v3}, Lcom/android/server/ThermistorObserver;->notifyLimitBrightness(IZ)V

    .line 334
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;

    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->flashLedDisable:Z
    invoke-static {v1}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$700(Lcom/android/server/ThermistorObserver$SIOPLevel;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/ThermistorObserver;->limitFlashLed(Z)V

    .line 337
    :cond_2
    const-string v1, "SIOP_LEVEL"

    invoke-virtual {p0, v1}, Lcom/android/server/ThermistorObserver;->startObserving(Ljava/lang/String;)V

    .line 338
    const-string v1, "DEVPATH=/devices/platform/s5p-tmu"

    invoke-virtual {p0, v1}, Lcom/android/server/ThermistorObserver;->startObserving(Ljava/lang/String;)V

    .line 339
    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v2, "Start Observing for SIOP."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
