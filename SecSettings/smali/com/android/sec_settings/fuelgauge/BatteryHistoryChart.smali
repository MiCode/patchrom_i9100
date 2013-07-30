.class public Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;
.super Landroid/view/View;
.source "BatteryHistoryChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart$ChartData;
    }
.end annotation


# instance fields
.field final mBatCriticalPath:Landroid/graphics/Path;

.field final mBatGoodPath:Landroid/graphics/Path;

.field mBatHigh:I

.field final mBatLevelPath:Landroid/graphics/Path;

.field mBatLow:I

.field final mBatWarnPath:Landroid/graphics/Path;

.field final mBatteryBackgroundPaint:Landroid/graphics/Paint;

.field final mBatteryCriticalPaint:Landroid/graphics/Paint;

.field final mBatteryGoodPaint:Landroid/graphics/Paint;

.field final mBatteryWarnPaint:Landroid/graphics/Paint;

.field mChargingLabel:Ljava/lang/String;

.field mChargingOffset:I

.field final mChargingPaint:Landroid/graphics/Paint;

.field final mChargingPath:Landroid/graphics/Path;

.field mDurationString:Ljava/lang/String;

.field mDurationStringWidth:I

.field mGpsOnLabel:Ljava/lang/String;

.field mGpsOnOffset:I

.field final mGpsOnPaint:Landroid/graphics/Paint;

.field final mGpsOnPath:Landroid/graphics/Path;

.field mHaveGps:Z

.field mHavePhoneSignal:Z

.field mHaveWifi:Z

.field mHistEnd:J

.field mHistStart:J

.field mLargeMode:Z

.field mLevelBottom:I

.field mLevelOffset:I

.field mLevelTop:I

.field mLineWidth:I

.field mNumHist:I

.field final mPhoneSignalChart:Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart$ChartData;

.field mPhoneSignalLabel:Ljava/lang/String;

.field mPhoneSignalOffset:I

.field mScreenOnLabel:Ljava/lang/String;

.field mScreenOnOffset:I

.field final mScreenOnPaint:Landroid/graphics/Paint;

.field final mScreenOnPath:Landroid/graphics/Path;

.field mStats:Landroid/os/BatteryStats;

.field mStatsPeriod:J

.field mTextAscent:I

.field mTextDescent:I

.field final mTextPaint:Landroid/text/TextPaint;

.field mThinLineWidth:I

.field mTotalDurationString:Ljava/lang/String;

.field mTotalDurationStringWidth:I

.field mWakeLockLabel:Ljava/lang/String;

.field mWakeLockOffset:I

.field final mWakeLockPaint:Landroid/graphics/Paint;

.field final mWakeLockPath:Landroid/graphics/Path;

.field mWifiRunningLabel:Ljava/lang/String;

.field mWifiRunningOffset:I

.field final mWifiRunningPaint:Landroid/graphics/Paint;

.field final mWifiRunningPath:Landroid/graphics/Path;

.field textColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 24
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 183
    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    new-instance v19, Landroid/graphics/Paint;

    const/16 v20, 0x1

    invoke-direct/range {v19 .. v20}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    .line 113
    new-instance v19, Landroid/graphics/Paint;

    const/16 v20, 0x1

    invoke-direct/range {v19 .. v20}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    .line 114
    new-instance v19, Landroid/graphics/Paint;

    const/16 v20, 0x1

    invoke-direct/range {v19 .. v20}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    .line 115
    new-instance v19, Landroid/graphics/Paint;

    const/16 v20, 0x1

    invoke-direct/range {v19 .. v20}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    .line 116
    new-instance v19, Landroid/graphics/Paint;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    .line 117
    new-instance v19, Landroid/graphics/Paint;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    .line 118
    new-instance v19, Landroid/graphics/Paint;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    .line 119
    new-instance v19, Landroid/graphics/Paint;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    .line 120
    new-instance v19, Landroid/graphics/Paint;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWakeLockPaint:Landroid/graphics/Paint;

    .line 121
    new-instance v19, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-direct/range {v19 .. v19}, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart$ChartData;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart$ChartData;

    .line 122
    new-instance v19, Landroid/text/TextPaint;

    const/16 v20, 0x1

    invoke-direct/range {v19 .. v20}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 124
    new-instance v19, Landroid/graphics/Path;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    .line 125
    new-instance v19, Landroid/graphics/Path;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    .line 126
    new-instance v19, Landroid/graphics/Path;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    .line 127
    new-instance v19, Landroid/graphics/Path;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    .line 128
    new-instance v19, Landroid/graphics/Path;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    .line 129
    new-instance v19, Landroid/graphics/Path;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    .line 130
    new-instance v19, Landroid/graphics/Path;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    .line 131
    new-instance v19, Landroid/graphics/Path;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    .line 132
    new-instance v19, Landroid/graphics/Path;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWakeLockPath:Landroid/graphics/Path;

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/16 v20, 0xff

    const/16 v21, 0x80

    const/16 v22, 0x80

    const/16 v23, 0x80

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    sget-object v20, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/16 v20, 0x80

    const/16 v21, 0x0

    const/16 v22, 0xff

    const/16 v23, 0x0

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    sget-object v20, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/16 v20, 0x80

    const/16 v21, 0xff

    const/16 v22, 0xff

    const/16 v23, 0x0

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    sget-object v20, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/16 v20, 0xc0

    const/16 v21, 0xff

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    sget-object v20, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/16 v20, 0xff

    const/16 v21, 0x0

    const/16 v22, 0x80

    const/16 v23, 0x0

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    sget-object v20, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    sget-object v20, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    sget-object v20, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    sget-object v20, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWakeLockPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    sget-object v20, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart$ChartData;

    move-object/from16 v19, v0

    const/16 v20, 0x7

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_0

    invoke-virtual/range {v19 .. v20}, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart$ChartData;->setColors([I)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/text/TextPaint;->density:F

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 208
    sget-object v19, Lcom/android/sec_settings/R$styleable;->BatteryHistoryChart:[I

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 214
    .local v5, a:Landroid/content/res/TypedArray;
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->textColor:Landroid/content/res/ColorStateList;

    .line 216
    const/16 v16, 0xf

    .line 217
    .local v16, textSize:I
    const/16 v18, -0x1

    .line 218
    .local v18, typefaceIndex:I
    const/4 v15, -0x1

    .line 220
    .local v15, styleIndex:I
    const/4 v7, 0x0

    .line 221
    .local v7, appearance:Landroid/content/res/TypedArray;
    const/16 v19, 0x0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 222
    .local v6, ap:I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v6, v0, :cond_0

    .line 223
    sget-object v19, Lcom/android/internal/R$styleable;->TextAppearance:[I

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 227
    :cond_0
    if-eqz v7, :cond_2

    .line 228
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v12

    .line 229
    .local v12, n:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v12, :cond_1

    .line 230
    invoke-virtual {v7, v11}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    .line 232
    .local v8, attr:I
    packed-switch v8, :pswitch_data_0

    .line 229
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 234
    :pswitch_0
    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->textColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 238
    :pswitch_1
    move/from16 v0, v16

    invoke-virtual {v7, v8, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v16

    .line 239
    goto :goto_1

    .line 242
    :pswitch_2
    const/16 v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v7, v8, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    .line 243
    goto :goto_1

    .line 246
    :pswitch_3
    const/16 v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v7, v8, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    goto :goto_1

    .line 251
    .end local v8           #attr:I
    :cond_1
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 254
    .end local v11           #i:I
    .end local v12           #n:I
    :cond_2
    const/4 v14, 0x0

    .line 255
    .local v14, shadowcolor:I
    const/4 v9, 0x0

    .local v9, dx:F
    const/4 v10, 0x0

    .local v10, dy:F
    const/4 v13, 0x0

    .line 257
    .local v13, r:F
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v12

    .line 258
    .restart local v12       #n:I
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_2
    if-ge v11, v12, :cond_3

    .line 259
    invoke-virtual {v5, v11}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    .line 261
    .restart local v8       #attr:I
    packed-switch v8, :pswitch_data_1

    .line 258
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 263
    :pswitch_4
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v8, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    .line 264
    goto :goto_3

    .line 267
    :pswitch_5
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v8, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    .line 268
    goto :goto_3

    .line 271
    :pswitch_6
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v8, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    .line 272
    goto :goto_3

    .line 275
    :pswitch_7
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v8, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    .line 276
    goto :goto_3

    .line 279
    :pswitch_8
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->textColor:Landroid/content/res/ColorStateList;

    goto :goto_3

    .line 283
    :pswitch_9
    move/from16 v0, v16

    invoke-virtual {v5, v8, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v16

    .line 284
    goto :goto_3

    .line 287
    :pswitch_a
    move/from16 v0, v18

    invoke-virtual {v5, v8, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    .line 288
    goto :goto_3

    .line 291
    :pswitch_b
    invoke-virtual {v5, v8, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    goto :goto_3

    .line 296
    .end local v8           #attr:I
    :cond_3
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->textColor:Landroid/content/res/ColorStateList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/text/TextPaint;->setColor(I)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v19, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 301
    const/16 v17, 0x0

    .line 302
    .local v17, tf:Landroid/graphics/Typeface;
    packed-switch v18, :pswitch_data_2

    .line 316
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 318
    if-eqz v14, :cond_4

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13, v9, v10, v14}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 321
    :cond_4
    return-void

    .line 304
    :pswitch_c
    sget-object v17, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 305
    goto :goto_4

    .line 308
    :pswitch_d
    sget-object v17, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 309
    goto :goto_4

    .line 312
    :pswitch_e
    sget-object v17, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_4

    .line 199
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xa0t 0xfft
        0x0t 0xa0t 0xa0t 0xfft
        0x20t 0x80t 0x80t 0xfft
        0x40t 0x80t 0x80t 0xfft
        0x60t 0x80t 0x80t 0xfft
        0x0t 0x80t 0x0t 0xfft
    .end array-data

    .line 232
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 261
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 302
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 747
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 748
    iget-boolean v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->textColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->textColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    invoke-virtual {p0}, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->invalidate()V

    .line 751
    :cond_0
    return-void
.end method

.method finishPaths(IIIIILandroid/graphics/Path;IZZZZZLandroid/graphics/Path;)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "levelh"
    .parameter "startX"
    .parameter "y"
    .parameter "curLevelPath"
    .parameter "lastX"
    .parameter "lastCharging"
    .parameter "lastScreenOn"
    .parameter "lastGpsOn"
    .parameter "lastWifiRunning"
    .parameter "lastWakeLock"
    .parameter "lastPath"

    .prologue
    .line 407
    if-eqz p6, :cond_2

    .line 408
    if-ltz p7, :cond_1

    if-ge p7, p1, :cond_1

    .line 409
    if-eqz p13, :cond_0

    .line 410
    int-to-float v1, p1

    int-to-float v2, p5

    move-object/from16 v0, p13

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 412
    :cond_0
    int-to-float v1, p1

    int-to-float v2, p5

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 414
    :cond_1
    int-to-float v1, p1

    iget v2, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 415
    int-to-float v1, p4

    iget v2, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 416
    invoke-virtual {p6}, Landroid/graphics/Path;->close()V

    .line 419
    :cond_2
    if-eqz p8, :cond_3

    .line 420
    iget-object v1, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 422
    :cond_3
    if-eqz p9, :cond_4

    .line 423
    iget-object v1, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 425
    :cond_4
    if-eqz p10, :cond_5

    .line 426
    iget-object v1, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 428
    :cond_5
    if-eqz p11, :cond_6

    .line 429
    iget-object v1, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 431
    :cond_6
    if-eqz p12, :cond_7

    .line 432
    iget-object v1, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWakeLockPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWakeLockOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 434
    :cond_7
    iget-boolean v1, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v1, :cond_8

    .line 435
    iget-object v1, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-virtual {v1, p1}, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart$ChartData;->finish(I)V

    .line 437
    :cond_8
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 663
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 665
    invoke-virtual {p0}, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->getWidth()I

    move-result v9

    .line 666
    .local v9, width:I
    invoke-virtual {p0}, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->getHeight()I

    move-result v6

    .line 668
    .local v6, height:I
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 669
    iget-boolean v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v0, :cond_c

    .line 670
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    iget v2, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    neg-int v2, v2

    iget v3, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 672
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTotalDurationString:Ljava/lang/String;

    div-int/lit8 v2, v9, 0x2

    iget v3, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTotalDurationStringWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v4, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 681
    :goto_0
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 685
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 687
    :cond_1
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 688
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 690
    :cond_2
    iget-boolean v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v0, :cond_3

    .line 691
    iget v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    sub-int v0, v6, v0

    iget v2, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int v8, v0, v2

    .line 692
    .local v8, top:I
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart$ChartData;

    iget v2, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    invoke-virtual {v0, p1, v8, v2}, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart$ChartData;->draw(Landroid/graphics/Canvas;II)V

    .line 694
    .end local v8           #top:I
    :cond_3
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 695
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 697
    :cond_4
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 698
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 700
    :cond_5
    iget-boolean v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v0, :cond_6

    .line 701
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 702
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 705
    :cond_6
    iget-boolean v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v0, :cond_7

    .line 706
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 707
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 710
    :cond_7
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWakeLockPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 711
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWakeLockPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWakeLockPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 714
    :cond_8
    iget-boolean v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v0, :cond_d

    .line 715
    iget-boolean v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v0, :cond_9

    .line 716
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalLabel:Ljava/lang/String;

    iget v2, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    sub-int v2, v6, v2

    iget v3, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 719
    :cond_9
    iget-boolean v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v0, :cond_a

    .line 720
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mGpsOnLabel:Ljava/lang/String;

    iget v2, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v2, v6, v2

    iget v3, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 723
    :cond_a
    iget-boolean v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v0, :cond_b

    .line 724
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWifiRunningLabel:Ljava/lang/String;

    iget v2, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v2, v6, v2

    iget v3, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 727
    :cond_b
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWakeLockLabel:Ljava/lang/String;

    iget v2, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWakeLockOffset:I

    sub-int v2, v6, v2

    iget v3, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 729
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mChargingLabel:Ljava/lang/String;

    iget v2, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v2, v6, v2

    iget v3, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 731
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mScreenOnLabel:Ljava/lang/String;

    iget v2, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v2, v6, v2

    iget v3, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 733
    iget v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v2, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-float v2, v0

    int-to-float v3, v9

    iget v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v4, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 735
    iget v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v3, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 737
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    const/16 v0, 0xa

    if-ge v7, v0, :cond_d

    .line 738
    iget v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    iget v2, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v3, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    sub-int/2addr v2, v3

    mul-int/2addr v2, v7

    div-int/lit8 v2, v2, 0xa

    add-int v10, v0, v2

    .line 739
    .local v10, y:I
    int-to-float v2, v10

    iget v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    int-to-float v4, v10

    iget-object v5, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 737
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 676
    .end local v7           #i:I
    .end local v10           #y:I
    :cond_c
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->textColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->getDrawableState()[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 678
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    div-int/lit8 v2, v9, 0x2

    iget v3, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-int/lit8 v3, v6, 0x2

    iget v4, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    iget v5, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 742
    :cond_d
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 397
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 398
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    .line 399
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTotalDurationString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTotalDurationStringWidth:I

    .line 400
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    .line 401
    iget-object v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    .line 402
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 39
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 441
    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 443
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int v27, v2, v3

    .line 444
    .local v27, textHeight:I
    const/4 v2, 0x1

    const/high16 v3, 0x4000

    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    .line 446
    mul-int/lit8 v2, v27, 0x6

    move/from16 v0, p2

    if-le v0, v2, :cond_b

    .line 447
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    .line 448
    mul-int/lit8 v2, v27, 0xf

    move/from16 v0, p2

    if-le v0, v2, :cond_a

    .line 450
    div-int/lit8 v2, v27, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    .line 455
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    add-int v2, v2, v27

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/16 v4, 0x20

    const/16 v37, 0x40

    const/16 v38, 0xff

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/16 v4, 0x20

    const/16 v37, 0x40

    const/16 v38, 0xff

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/16 v4, 0x20

    const/16 v37, 0x40

    const/16 v38, 0xff

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWakeLockPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/16 v4, 0x20

    const/16 v37, 0x40

    const/16 v38, 0xff

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 469
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    .line 470
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 476
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWakeLockPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 480
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v2, :cond_f

    .line 481
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    add-int v17, v27, v2

    .line 482
    .local v17, barOffset:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    .line 483
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    add-int v2, v2, v17

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    .line 484
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    add-int v2, v2, v17

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWakeLockOffset:I

    .line 485
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWakeLockOffset:I

    add-int v2, v2, v17

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    .line 486
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v2, :cond_c

    move/from16 v2, v17

    :goto_2
    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    .line 487
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v2, :cond_d

    move/from16 v2, v17

    :goto_3
    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    .line 488
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v3, :cond_e

    .end local v17           #barOffset:I
    :goto_4
    add-int v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    .line 490
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v2, :cond_1

    .line 491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart$ChartData;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart$ChartData;->init(I)V

    .line 504
    :cond_1
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 509
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWakeLockPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 512
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 514
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v30, v0

    .line 515
    .local v30, timeStart:J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v37, v0

    sub-long v28, v2, v37

    .line 517
    .local v28, timeChange:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatLow:I

    move/from16 v19, v0

    .line 518
    .local v19, batLow:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatHigh:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatLow:I

    sub-int v18, v2, v3

    .line 520
    .local v18, batChange:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    sub-int v2, p2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    sub-int v5, v2, v3

    .line 521
    .local v5, levelh:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    .line 523
    const/16 v35, 0x0

    .local v35, x:I
    const/16 v36, 0x0

    .local v36, y:I
    const/4 v6, 0x0

    .local v6, startX:I
    const/4 v9, -0x1

    .local v9, lastX:I
    const/4 v7, -0x1

    .line 524
    .local v7, lastY:I
    const/16 v23, 0x0

    .line 525
    .local v23, i:I
    const/4 v8, 0x0

    .line 526
    .local v8, curLevelPath:Landroid/graphics/Path;
    const/4 v15, 0x0

    .line 527
    .local v15, lastLinePath:Landroid/graphics/Path;
    const/4 v10, 0x0

    .local v10, lastCharging:Z
    const/4 v11, 0x0

    .local v11, lastScreenOn:Z
    const/4 v12, 0x0

    .line 528
    .local v12, lastGpsOn:Z
    const/4 v13, 0x0

    .local v13, lastWifiRunning:Z
    const/4 v14, 0x0

    .line 529
    .local v14, lastWakeLock:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mNumHist:I

    move/from16 v16, v0

    .line 530
    .local v16, N:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v2}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 531
    new-instance v25, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v25 .. v25}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 532
    .end local v10           #lastCharging:Z
    .end local v11           #lastScreenOn:Z
    .end local v12           #lastGpsOn:Z
    .local v25, rec:Landroid/os/BatteryStats$HistoryItem;
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v2

    if-eqz v2, :cond_21

    move/from16 v0, v23

    move/from16 v1, v16

    if-ge v0, v1, :cond_21

    .line 533
    move-object/from16 v0, v25

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x1

    if-ne v2, v3, :cond_20

    .line 534
    move-object/from16 v0, v25

    iget-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v2, v2, v30

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v37, v0

    mul-long v2, v2, v37

    div-long v2, v2, v28

    long-to-int v0, v2

    move/from16 v35, v0

    .line 535
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v2, v5

    move-object/from16 v0, v25

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    sub-int v3, v3, v19

    add-int/lit8 v4, v5, -0x1

    mul-int/2addr v3, v4

    div-int v3, v3, v18

    sub-int v36, v2, v3

    .line 537
    move/from16 v0, v35

    if-eq v9, v0, :cond_9

    .line 539
    move/from16 v0, v36

    if-eq v7, v0, :cond_3

    .line 542
    move-object/from16 v0, v25

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v32, v0

    .line 543
    .local v32, value:B
    const/16 v2, 0xe

    move/from16 v0, v32

    if-gt v0, v2, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    move-object/from16 v24, v0

    .line 547
    .local v24, path:Landroid/graphics/Path;
    :goto_7
    move-object/from16 v0, v24

    if-eq v0, v15, :cond_12

    .line 548
    if-eqz v15, :cond_2

    .line 549
    move/from16 v0, v35

    int-to-float v2, v0

    move/from16 v0, v36

    int-to-float v3, v0

    invoke-virtual {v15, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 551
    :cond_2
    move/from16 v0, v35

    int-to-float v2, v0

    move/from16 v0, v36

    int-to-float v3, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 552
    move-object/from16 v15, v24

    .line 557
    :goto_8
    if-nez v8, :cond_13

    .line 558
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    .line 559
    move/from16 v0, v35

    int-to-float v2, v0

    move/from16 v0, v36

    int-to-float v3, v0

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 560
    move/from16 v6, v35

    .line 564
    :goto_9
    move/from16 v9, v35

    .line 565
    move/from16 v7, v36

    .line 568
    .end local v24           #path:Landroid/graphics/Path;
    .end local v32           #value:B
    :cond_3
    move-object/from16 v0, v25

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x8

    and-int/2addr v2, v3

    if-eqz v2, :cond_14

    const/16 v21, 0x1

    .line 570
    .local v21, charging:Z
    :goto_a
    move/from16 v0, v21

    if-eq v0, v10, :cond_4

    .line 571
    if-eqz v21, :cond_15

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 576
    :goto_b
    move/from16 v10, v21

    .line 579
    :cond_4
    move-object/from16 v0, v25

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x10

    and-int/2addr v2, v3

    if-eqz v2, :cond_16

    const/16 v26, 0x1

    .line 581
    .local v26, screenOn:Z
    :goto_c
    move/from16 v0, v26

    if-eq v0, v11, :cond_5

    .line 582
    if-eqz v26, :cond_17

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 587
    :goto_d
    move/from16 v11, v26

    .line 590
    :cond_5
    move-object/from16 v0, v25

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x1000

    and-int/2addr v2, v3

    if-eqz v2, :cond_18

    const/16 v22, 0x1

    .line 592
    .local v22, gpsOn:Z
    :goto_e
    move/from16 v0, v22

    if-eq v0, v12, :cond_6

    .line 593
    if-eqz v22, :cond_19

    .line 594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 598
    :goto_f
    move/from16 v12, v22

    .line 601
    :cond_6
    move-object/from16 v0, v25

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x400

    and-int/2addr v2, v3

    if-eqz v2, :cond_1a

    const/16 v34, 0x1

    .line 603
    .local v34, wifiRunning:Z
    :goto_10
    move/from16 v0, v34

    if-eq v0, v13, :cond_7

    .line 604
    if-eqz v34, :cond_1b

    .line 605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 609
    :goto_11
    move/from16 v13, v34

    .line 612
    :cond_7
    move-object/from16 v0, v25

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x4000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1c

    const/16 v33, 0x1

    .line 614
    .local v33, wakeLock:Z
    :goto_12
    move/from16 v0, v33

    if-eq v0, v14, :cond_8

    .line 615
    if-eqz v33, :cond_1d

    .line 616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWakeLockPath:Landroid/graphics/Path;

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWakeLockOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 620
    :goto_13
    move/from16 v14, v33

    .line 623
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v2, :cond_9

    .line 625
    move-object/from16 v0, v25

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit16 v2, v2, 0xf00

    shr-int/lit8 v2, v2, 0x8

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1e

    .line 628
    const/16 v20, 0x0

    .line 636
    .local v20, bin:I
    :goto_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart$ChartData;

    move/from16 v0, v35

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart$ChartData;->addTick(II)V

    .line 652
    .end local v20           #bin:I
    .end local v21           #charging:Z
    .end local v22           #gpsOn:Z
    .end local v26           #screenOn:Z
    .end local v33           #wakeLock:Z
    .end local v34           #wifiRunning:Z
    :cond_9
    :goto_15
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_6

    .line 453
    .end local v5           #levelh:I
    .end local v6           #startX:I
    .end local v7           #lastY:I
    .end local v8           #curLevelPath:Landroid/graphics/Path;
    .end local v9           #lastX:I
    .end local v13           #lastWifiRunning:Z
    .end local v14           #lastWakeLock:Z
    .end local v15           #lastLinePath:Landroid/graphics/Path;
    .end local v16           #N:I
    .end local v18           #batChange:I
    .end local v19           #batLow:I
    .end local v23           #i:I
    .end local v25           #rec:Landroid/os/BatteryStats$HistoryItem;
    .end local v28           #timeChange:J
    .end local v30           #timeStart:J
    .end local v35           #x:I
    .end local v36           #y:I
    :cond_a
    div-int/lit8 v2, v27, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    goto/16 :goto_0

    .line 461
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    .line 462
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    .line 463
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    .line 464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/16 v37, 0x0

    const/16 v38, 0xff

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/16 v37, 0x0

    const/16 v38, 0xff

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/16 v37, 0x0

    const/16 v38, 0xff

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWakeLockPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/16 v37, 0x0

    const/16 v38, 0xff

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto/16 :goto_1

    .line 486
    .restart local v17       #barOffset:I
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 487
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 488
    :cond_e
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 494
    .end local v17           #barOffset:I
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWakeLockOffset:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    .line 496
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    mul-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    .line 497
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    .line 498
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    mul-int/lit8 v2, v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    .line 499
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v2, :cond_1

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart$ChartData;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart$ChartData;->init(I)V

    goto/16 :goto_5

    .line 544
    .restart local v5       #levelh:I
    .restart local v6       #startX:I
    .restart local v7       #lastY:I
    .restart local v8       #curLevelPath:Landroid/graphics/Path;
    .restart local v9       #lastX:I
    .restart local v13       #lastWifiRunning:Z
    .restart local v14       #lastWakeLock:Z
    .restart local v15       #lastLinePath:Landroid/graphics/Path;
    .restart local v16       #N:I
    .restart local v18       #batChange:I
    .restart local v19       #batLow:I
    .restart local v23       #i:I
    .restart local v25       #rec:Landroid/os/BatteryStats$HistoryItem;
    .restart local v28       #timeChange:J
    .restart local v30       #timeStart:J
    .restart local v32       #value:B
    .restart local v35       #x:I
    .restart local v36       #y:I
    :cond_10
    const/16 v2, 0x1d

    move/from16 v0, v32

    if-gt v0, v2, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    move-object/from16 v24, v0

    .restart local v24       #path:Landroid/graphics/Path;
    goto/16 :goto_7

    .line 545
    .end local v24           #path:Landroid/graphics/Path;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    move-object/from16 v24, v0

    .restart local v24       #path:Landroid/graphics/Path;
    goto/16 :goto_7

    .line 554
    :cond_12
    move/from16 v0, v35

    int-to-float v2, v0

    move/from16 v0, v36

    int-to-float v3, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_8

    .line 562
    :cond_13
    move/from16 v0, v35

    int-to-float v2, v0

    move/from16 v0, v36

    int-to-float v3, v0

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_9

    .line 568
    .end local v24           #path:Landroid/graphics/Path;
    .end local v32           #value:B
    :cond_14
    const/16 v21, 0x0

    goto/16 :goto_a

    .line 574
    .restart local v21       #charging:Z
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_b

    .line 579
    :cond_16
    const/16 v26, 0x0

    goto/16 :goto_c

    .line 585
    .restart local v26       #screenOn:Z
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_d

    .line 590
    :cond_18
    const/16 v22, 0x0

    goto/16 :goto_e

    .line 596
    .restart local v22       #gpsOn:Z
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_f

    .line 601
    :cond_1a
    const/16 v34, 0x0

    goto/16 :goto_10

    .line 607
    .restart local v34       #wifiRunning:Z
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_11

    .line 612
    :cond_1c
    const/16 v33, 0x0

    goto/16 :goto_12

    .line 618
    .restart local v33       #wakeLock:Z
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWakeLockPath:Landroid/graphics/Path;

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWakeLockOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_13

    .line 629
    :cond_1e
    move-object/from16 v0, v25

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x800

    and-int/2addr v2, v3

    if-eqz v2, :cond_1f

    .line 630
    const/16 v20, 0x1

    .restart local v20       #bin:I
    goto/16 :goto_14

    .line 632
    .end local v20           #bin:I
    :cond_1f
    move-object/from16 v0, v25

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit16 v2, v2, 0xf0

    shr-int/lit8 v20, v2, 0x4

    .line 634
    .restart local v20       #bin:I
    add-int/lit8 v20, v20, 0x2

    goto/16 :goto_14

    .line 640
    .end local v20           #bin:I
    .end local v21           #charging:Z
    .end local v22           #gpsOn:Z
    .end local v26           #screenOn:Z
    .end local v33           #wakeLock:Z
    .end local v34           #wifiRunning:Z
    :cond_20
    move-object/from16 v0, v25

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x3

    if-eq v2, v3, :cond_9

    .line 641
    if-eqz v8, :cond_9

    .line 642
    add-int/lit8 v3, v35, 0x1

    move-object/from16 v2, p0

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v15}, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->finishPaths(IIIIILandroid/graphics/Path;IZZZZZLandroid/graphics/Path;)V

    .line 645
    const/4 v7, -0x1

    move v9, v7

    .line 646
    const/4 v8, 0x0

    .line 647
    const/4 v15, 0x0

    .line 648
    const/4 v14, 0x0

    move v12, v14

    .local v12, lastGpsOn:I
    move v11, v14

    .local v11, lastScreenOn:I
    move v10, v14

    .local v10, lastCharging:I
    goto/16 :goto_15

    .end local v10           #lastCharging:I
    .end local v11           #lastScreenOn:I
    .end local v12           #lastGpsOn:I
    .end local v25           #rec:Landroid/os/BatteryStats$HistoryItem;
    :cond_21
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    .line 656
    invoke-virtual/range {v2 .. v15}, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->finishPaths(IIIIILandroid/graphics/Path;IZZZZZLandroid/graphics/Path;)V

    .line 659
    return-void
.end method

.method setStats(Landroid/os/BatteryStats;)V
    .locals 14
    .parameter "stats"

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    .line 347
    iget-object v9, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v7

    .line 349
    .local v7, uSecTime:J
    iput-wide v7, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mStatsPeriod:J

    .line 350
    invoke-virtual {p0}, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mStatsPeriod:J

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    long-to-double v10, v10

    invoke-static {v9, v10, v11}, Lcom/android/sec_settings/fuelgauge/Utils;->formatElapsedTime(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, durationString:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0906c7

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    .line 353
    invoke-virtual {p0}, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0906c9

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mChargingLabel:Ljava/lang/String;

    .line 354
    invoke-virtual {p0}, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0906ca

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mScreenOnLabel:Ljava/lang/String;

    .line 355
    invoke-virtual {p0}, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0906cb

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mGpsOnLabel:Ljava/lang/String;

    .line 356
    invoke-virtual {p0}, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0906cc

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWifiRunningLabel:Ljava/lang/String;

    .line 357
    invoke-virtual {p0}, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0906cd

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mWakeLockLabel:Ljava/lang/String;

    .line 358
    invoke-virtual {p0}, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0906ce

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalLabel:Ljava/lang/String;

    .line 360
    const/4 v5, 0x0

    .line 361
    .local v5, pos:I
    const/4 v3, 0x0

    .line 362
    .local v3, lastInteresting:I
    const/4 v4, -0x1

    .line 363
    .local v4, lastLevel:B
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatLow:I

    .line 364
    const/16 v9, 0x64

    iput v9, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mBatHigh:I

    .line 365
    const/4 v0, 0x0

    .line 366
    .local v0, aggrStates:I
    const/4 v2, 0x1

    .line 367
    .local v2, first:Z
    invoke-virtual {p1}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 368
    new-instance v6, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v6}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 369
    .local v6, rec:Landroid/os/BatteryStats$HistoryItem;
    :cond_0
    :goto_0
    invoke-virtual {p1, v6}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 370
    add-int/lit8 v5, v5, 0x1

    .line 371
    iget-byte v9, v6, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 372
    if-eqz v2, :cond_1

    .line 373
    const/4 v2, 0x0

    .line 374
    iget-wide v9, v6, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v9, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    .line 376
    :cond_1
    iget-byte v9, v6, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ne v9, v4, :cond_2

    const/4 v9, 0x1

    if-ne v5, v9, :cond_3

    .line 377
    :cond_2
    iget-byte v4, v6, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 379
    :cond_3
    move v3, v5

    .line 380
    iget-wide v9, v6, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v9, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    .line 381
    iget v9, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    or-int/2addr v0, v9

    goto :goto_0

    .line 385
    .end local v6           #rec:Landroid/os/BatteryStats$HistoryItem;
    :cond_4
    iput v3, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mNumHist:I

    .line 386
    const/high16 v9, 0x1000

    and-int/2addr v9, v0

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    .line 387
    const/high16 v9, 0x400

    and-int/2addr v9, v0

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    :goto_2
    iput-boolean v9, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    .line 388
    invoke-virtual {p0}, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/sec_settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 389
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    .line 391
    :cond_5
    iget-wide v9, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    iget-wide v11, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    cmp-long v9, v9, v11

    if-gtz v9, :cond_6

    iget-wide v9, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    .line 392
    :cond_6
    invoke-virtual {p0}, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    iget-wide v12, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    sub-long/2addr v10, v12

    long-to-double v10, v10

    invoke-static {v9, v10, v11}, Lcom/android/sec_settings/fuelgauge/Utils;->formatElapsedTime(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTotalDurationString:Ljava/lang/String;

    .line 393
    return-void

    .line 386
    :cond_7
    const/4 v9, 0x0

    goto :goto_1

    .line 387
    :cond_8
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 6
    .parameter "tf"
    .parameter "style"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 324
    if-lez p2, :cond_4

    .line 325
    if-nez p1, :cond_1

    .line 326
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 331
    :goto_0
    iget-object v4, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 333
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 334
    .local v1, typefaceStyle:I
    :goto_1
    xor-int/lit8 v4, v1, -0x1

    and-int v0, p2, v4

    .line 335
    .local v0, need:I
    iget-object v4, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 336
    iget-object v4, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    const/high16 v2, -0x4180

    :goto_2
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 342
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :goto_3
    return-void

    .line 328
    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 333
    goto :goto_1

    .restart local v0       #need:I
    .restart local v1       #typefaceStyle:I
    :cond_3
    move v2, v3

    .line 336
    goto :goto_2

    .line 338
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :cond_4
    iget-object v4, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 339
    iget-object v2, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 340
    iget-object v2, p0, Lcom/android/sec_settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_3
.end method
