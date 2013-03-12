.class public Lcom/android/server/CustomFrequencyManagerService;
.super Landroid/os/ICustomFrequencyManager$Stub;
.source "CustomFrequencyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/CustomFrequencyManagerService$1;,
        Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;,
        Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    }
.end annotation


# static fields
.field private static final APE_OPP_PATH:Ljava/lang/String; = "/debug/prcmu/ape_opp"

.field private static final BUS_DEFAULT_FREQUENCY:I = 0x0

.field private static final BUS_MAX_FREQUENCY:I = 0x61b48

.field private static final CPU_CORE_PATH:Ljava/lang/String; = "/sys/devices/system/cpu/cpufreq/pegasusq/min_cpu_lock"

.field private static final CPU_DEFAULT_CORE:I = 0x0

.field private static final CPU_MAX_CORE:I = 0x4

.field private static final DDR_OPP_PATH:Ljava/lang/String; = "/debug/prcmu/ddr_opp"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final GPU_DEFAULT_FREQUENCY:I = 0x0

.field private static final GPU_LOCK:Ljava/lang/Object; = null

.field private static final GPU_MAX_FREQUENCY:I = 0x1

.field private static GPU_PATH:Ljava/lang/String; = null

.field private static final GPU_TABLE_PATH:Ljava/lang/String; = ""

#the value of this static final field might be set in the static constructor
.field private static final IS_AP_TYPE_DB8420:Z = false

.field private static final LCD_FRAMERATE_LOCK:Ljava/lang/Object; = null

.field private static final LCD_FRAME_RATE_DEFAULT:I = 0x1

.field private static final LCD_FRAME_RATE_PATH:Ljava/lang/String; = "/sys/class/graphics/fb0/lcdfreq/level"

.field private static final OPP_DEFAULT:I = 0x0

.field private static final SYSBUS_LOCK:Ljava/lang/Object; = null

.field private static final SYSBUS_PATH:Ljava/lang/String; = "/sys/devices/system/cpu/busfreq/curr_freq"

.field private static final SYSBUS_TABLE_PATH:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "CustomFrequencyManagerService"

.field private static final TESTING:Z = false

.field private static final UTF8:Ljava/lang/String; = "UTF-8"

.field private static countOfGPULock:I

.field private static countOfSysBusLock:I

.field private static mApeOppPath:Z

.field private static mCpuCorePath:Z

.field private static mDdrOppPath:Z

.field private static mGpuPath:Z

.field private static mLcdFrameRatePath:Z

.field private static mSysBusPath:Z


# instance fields
.field mContext:Landroid/content/Context;

.field private mCurrentCPUCoreRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

.field private mCurrentGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

.field private mCurrentSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

.field private final mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

.field private mSupportedCPUCore:[I

.field private mSupportedGPUFrequency:[I

.field private mSupportedSysBusFrequency:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    .line 69
    const-string v0, "/sys/power/gpu_lock"

    sput-object v0, Lcom/android/server/CustomFrequencyManagerService;->GPU_PATH:Ljava/lang/String;

    .line 75
    sput-boolean v2, Lcom/android/server/CustomFrequencyManagerService;->mSysBusPath:Z

    .line 76
    sput-boolean v2, Lcom/android/server/CustomFrequencyManagerService;->mGpuPath:Z

    .line 77
    sput-boolean v2, Lcom/android/server/CustomFrequencyManagerService;->mLcdFrameRatePath:Z

    .line 78
    sput-boolean v2, Lcom/android/server/CustomFrequencyManagerService;->mCpuCorePath:Z

    .line 79
    sput-boolean v2, Lcom/android/server/CustomFrequencyManagerService;->mDdrOppPath:Z

    .line 80
    sput-boolean v2, Lcom/android/server/CustomFrequencyManagerService;->mApeOppPath:Z

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/CustomFrequencyManagerService;->GPU_LOCK:Ljava/lang/Object;

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/CustomFrequencyManagerService;->SYSBUS_LOCK:Ljava/lang/Object;

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/CustomFrequencyManagerService;->LCD_FRAMERATE_LOCK:Ljava/lang/Object;

    .line 101
    sput v2, Lcom/android/server/CustomFrequencyManagerService;->countOfGPULock:I

    .line 102
    sput v2, Lcom/android/server/CustomFrequencyManagerService;->countOfSysBusLock:I

    .line 109
    const-string v0, "DB8420"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/CustomFrequencyManagerService;->IS_AP_TYPE_DB8420:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Landroid/os/ICustomFrequencyManager$Stub;-><init>()V

    .line 62
    iput-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    .line 63
    iput-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    .line 64
    iput-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    .line 66
    iput-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    .line 104
    new-instance v0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-direct {v0, p0, v1}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;-><init>(Lcom/android/server/CustomFrequencyManagerService;Lcom/android/server/CustomFrequencyManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    .line 105
    iput-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    .line 106
    iput-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    .line 107
    iput-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentCPUCoreRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    .line 113
    iput-object p1, p0, Lcom/android/server/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    .line 115
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->checkSysfsNode()V

    .line 116
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->verifyDefaultCondition()V

    .line 117
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->initSupportedGPUFrequency()V

    .line 118
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->initSupportedCPUCore()V

    .line 119
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->initSupportedSysBusFrequency()V

    .line 120
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/CustomFrequencyManagerService;)Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    return v0
.end method

.method private checkSysfsNode()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 123
    new-instance v1, Ljava/io/File;

    const-string v7, "/sys/devices/system/cpu/busfreq/curr_freq"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v1, busFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-eqz v7, :cond_6

    move v7, v8

    :goto_0
    sput-boolean v7, Lcom/android/server/CustomFrequencyManagerService;->mSysBusPath:Z

    .line 125
    sget-boolean v7, Lcom/android/server/CustomFrequencyManagerService;->mSysBusPath:Z

    if-nez v7, :cond_0

    .line 126
    const-string v7, "CustomFrequencyManagerService"

    const-string v10, "checkSysfsNode:: Sysfs node for SYSBUS_PATH doesn\'t exist."

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    new-instance v4, Ljava/io/File;

    sget-object v7, Lcom/android/server/CustomFrequencyManagerService;->GPU_PATH:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v4, gpuFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-eqz v7, :cond_7

    move v7, v8

    :goto_1
    sput-boolean v7, Lcom/android/server/CustomFrequencyManagerService;->mGpuPath:Z

    .line 131
    sget-boolean v7, Lcom/android/server/CustomFrequencyManagerService;->mGpuPath:Z

    if-nez v7, :cond_1

    .line 132
    new-instance v6, Ljava/io/File;

    const-string v7, "/sys/power/mali_lock"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    .local v6, maliGpuFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v6}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-eqz v7, :cond_8

    move v7, v8

    :goto_2
    sput-boolean v7, Lcom/android/server/CustomFrequencyManagerService;->mGpuPath:Z

    .line 134
    sget-boolean v7, Lcom/android/server/CustomFrequencyManagerService;->mGpuPath:Z

    if-eqz v7, :cond_9

    .line 135
    const-string v7, "/sys/power/mali_lock"

    sput-object v7, Lcom/android/server/CustomFrequencyManagerService;->GPU_PATH:Ljava/lang/String;

    .line 141
    .end local v6           #maliGpuFile:Ljava/io/File;
    :cond_1
    :goto_3
    new-instance v5, Ljava/io/File;

    const-string v7, "/sys/class/graphics/fb0/lcdfreq/level"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .local v5, lcdFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-eqz v7, :cond_a

    move v7, v8

    :goto_4
    sput-boolean v7, Lcom/android/server/CustomFrequencyManagerService;->mLcdFrameRatePath:Z

    .line 143
    sget-boolean v7, Lcom/android/server/CustomFrequencyManagerService;->mLcdFrameRatePath:Z

    if-nez v7, :cond_2

    .line 144
    const-string v7, "CustomFrequencyManagerService"

    const-string v10, "checkSysfsNode:: Sysfs node for LCD_FRAME_RATE_PATH doesn\'t exist."

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_2
    new-instance v2, Ljava/io/File;

    const-string v7, "/sys/devices/system/cpu/cpufreq/pegasusq/min_cpu_lock"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    .local v2, cpuCoreFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-eqz v7, :cond_b

    move v7, v8

    :goto_5
    sput-boolean v7, Lcom/android/server/CustomFrequencyManagerService;->mCpuCorePath:Z

    .line 149
    sget-boolean v7, Lcom/android/server/CustomFrequencyManagerService;->mCpuCorePath:Z

    if-nez v7, :cond_3

    .line 150
    const-string v7, "CustomFrequencyManagerService"

    const-string v10, "checkSysfsNode:: Sysfs node for CPU_CORE_PATH doesn\'t exist."

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_3
    new-instance v3, Ljava/io/File;

    const-string v7, "/debug/prcmu/ddr_opp"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    .local v3, ddrOppFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-eqz v7, :cond_c

    move v7, v8

    :goto_6
    sput-boolean v7, Lcom/android/server/CustomFrequencyManagerService;->mDdrOppPath:Z

    .line 155
    sget-boolean v7, Lcom/android/server/CustomFrequencyManagerService;->mDdrOppPath:Z

    if-nez v7, :cond_4

    .line 156
    const-string v7, "CustomFrequencyManagerService"

    const-string v10, "checkSysfsNode:: Sysfs node for DDR_OPP_PATH doesn\'t exist."

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_4
    new-instance v0, Ljava/io/File;

    const-string v7, "/debug/prcmu/ape_opp"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, apeOppFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-eqz v7, :cond_d

    :goto_7
    sput-boolean v8, Lcom/android/server/CustomFrequencyManagerService;->mApeOppPath:Z

    .line 161
    sget-boolean v7, Lcom/android/server/CustomFrequencyManagerService;->mApeOppPath:Z

    if-nez v7, :cond_5

    .line 162
    const-string v7, "CustomFrequencyManagerService"

    const-string v8, "checkSysfsNode:: Sysfs node for APE_OPP_PATH doesn\'t exist."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_5
    return-void

    .end local v0           #apeOppFile:Ljava/io/File;
    .end local v2           #cpuCoreFile:Ljava/io/File;
    .end local v3           #ddrOppFile:Ljava/io/File;
    .end local v4           #gpuFile:Ljava/io/File;
    .end local v5           #lcdFile:Ljava/io/File;
    :cond_6
    move v7, v9

    .line 124
    goto/16 :goto_0

    .restart local v4       #gpuFile:Ljava/io/File;
    :cond_7
    move v7, v9

    .line 130
    goto/16 :goto_1

    .restart local v6       #maliGpuFile:Ljava/io/File;
    :cond_8
    move v7, v9

    .line 133
    goto/16 :goto_2

    .line 137
    :cond_9
    const-string v7, "CustomFrequencyManagerService"

    const-string v10, "checkSysfsNode:: Sysfs node for GPU_PATH doesn\'t exist."

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .end local v6           #maliGpuFile:Ljava/io/File;
    .restart local v5       #lcdFile:Ljava/io/File;
    :cond_a
    move v7, v9

    .line 142
    goto/16 :goto_4

    .restart local v2       #cpuCoreFile:Ljava/io/File;
    :cond_b
    move v7, v9

    .line 148
    goto :goto_5

    .restart local v3       #ddrOppFile:Ljava/io/File;
    :cond_c
    move v7, v9

    .line 154
    goto :goto_6

    .restart local v0       #apeOppFile:Ljava/io/File;
    :cond_d
    move v8, v9

    .line 160
    goto :goto_7
.end method

.method private initSupportedCPUCore()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 230
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    if-eqz v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 234
    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    .line 235
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    aput v1, v0, v1

    .line 236
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    aput v2, v0, v2

    .line 237
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    aput v3, v0, v3

    .line 238
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    aput v4, v0, v4

    .line 239
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    aput v5, v0, v5

    goto :goto_0
.end method

.method private initSupportedGPUFrequency()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 218
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    if-eqz v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 222
    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    .line 223
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    aput v1, v0, v1

    .line 224
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    aput v2, v0, v2

    .line 225
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    aput v3, v0, v3

    .line 226
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    aput v4, v0, v4

    goto :goto_0
.end method

.method private initSupportedSysBusFrequency()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 243
    sget-boolean v0, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 244
    const-string v0, "CustomFrequencyManagerService"

    const-string v1, "initSupportedSysBusFrequency"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    if-nez v0, :cond_1

    .line 249
    sget-boolean v0, Lcom/android/server/CustomFrequencyManagerService;->IS_AP_TYPE_DB8420:Z

    if-eqz v0, :cond_2

    .line 251
    const-string v0, "CustomFrequencyManagerService"

    const-string v1, "initSupportedSysBusFrequency:: 100100, 5025"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    .line 253
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    const v1, 0x18704

    aput v1, v0, v2

    .line 254
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    const/16 v1, 0x13a1

    aput v1, v0, v3

    .line 266
    :cond_1
    :goto_0
    return-void

    .line 257
    :cond_2
    const-string v0, "CustomFrequencyManagerService"

    const-string v1, "initSupportedSysBusFrequency:: 400200, 267200, 267160, 160160, 133133"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    .line 259
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    const v1, 0x61b48

    aput v1, v0, v2

    .line 260
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    const v1, 0x413c0

    aput v1, v0, v3

    .line 261
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    const v1, 0x41398

    aput v1, v0, v4

    .line 262
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    const/4 v1, 0x3

    const v2, 0x271a0

    aput v2, v0, v1

    .line 263
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    const/4 v1, 0x4

    const v2, 0x2080d

    aput v2, v0, v1

    goto :goto_0
.end method

.method private modifyCPUCoreToValue(I)V
    .locals 6
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 541
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/devices/system/cpu/cpufreq/pegasusq/min_cpu_lock"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 542
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    const/4 v1, 0x0

    .line 548
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/sys/devices/system/cpu/cpufreq/pegasusq/min_cpu_lock"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 550
    sget-boolean v3, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 551
    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&&& modifyCPUCoreToValue : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 554
    :cond_2
    if-eqz v2, :cond_0

    .line 555
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 554
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v3

    :goto_1
    if-eqz v1, :cond_3

    .line 555
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 554
    :cond_3
    throw v3

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private modifyFrameRateToValue(I)V
    .locals 7
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 478
    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/class/graphics/fb0/lcdfreq/level"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 479
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 484
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "modifyFrameRateToValue:: value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_2
    const/4 v2, 0x0

    .line 493
    .local v2, fos:Ljava/io/FileOutputStream;
    const/16 v4, 0x28

    if-eq p1, v4, :cond_3

    const/16 v4, 0x33

    if-eq p1, v4, :cond_3

    const/16 v4, 0x32

    if-ne p1, v4, :cond_7

    .line 494
    :cond_3
    const/4 p1, 0x1

    .line 498
    :cond_4
    :goto_1
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/sys/class/graphics/fb0/lcdfreq/level"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 499
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 500
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_5

    .line 501
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "modifyFrameRateToValue:: value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 508
    :cond_5
    if-eqz v3, :cond_6

    .line 509
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_6
    move-object v2, v3

    .line 511
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 495
    :cond_7
    const/16 v4, 0x3c

    if-ne p1, v4, :cond_4

    .line 496
    const/4 p1, 0x0

    goto :goto_1

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :goto_2
    :try_start_2
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "modifyFrameRateToValue:: UnsupportedEncodingException = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 508
    if-eqz v2, :cond_0

    .line 509
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :goto_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_0

    .line 505
    :catch_1
    move-exception v0

    .line 506
    .local v0, e:Ljava/lang/Exception;
    :goto_4
    :try_start_3
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "modifyFrameRateToValue:: Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 508
    if-eqz v2, :cond_0

    goto :goto_3

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_5
    if-eqz v2, :cond_8

    .line 509
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 508
    :cond_8
    throw v4

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 505
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 503
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private modifyGPUToValue(I)V
    .locals 5
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    sget-boolean v2, Lcom/android/server/CustomFrequencyManagerService;->mGpuPath:Z

    if-nez v2, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    const/4 v0, 0x0

    .line 318
    .local v0, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Lcom/android/server/CustomFrequencyManagerService;->GPU_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    .end local v0           #fos:Ljava/io/FileOutputStream;
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 320
    sget-boolean v2, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 321
    const-string v2, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "### modifyGPUToValue : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 324
    :cond_2
    if-eqz v1, :cond_0

    .line 325
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 324
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v2

    :goto_1
    if-eqz v0, :cond_3

    .line 325
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 324
    :cond_3
    throw v2

    .end local v0           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private modifySysBusToValue(I)V
    .locals 8
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    sget-boolean v5, Lcom/android/server/CustomFrequencyManagerService;->IS_AP_TYPE_DB8420:Z

    if-eqz v5, :cond_6

    .line 353
    sget-boolean v5, Lcom/android/server/CustomFrequencyManagerService;->mDdrOppPath:Z

    if-nez v5, :cond_1

    sget-boolean v5, Lcom/android/server/CustomFrequencyManagerService;->mApeOppPath:Z

    if-nez v5, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    const/4 v3, 0x0

    .line 362
    .local v3, fos:Ljava/io/FileOutputStream;
    const v5, 0x18704

    if-ne p1, v5, :cond_4

    .line 363
    const/16 v0, 0x64

    .line 364
    .local v0, APE:I
    const/16 v1, 0x64

    .line 370
    .local v1, DDR:I
    :goto_1
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    const-string v5, "/debug/prcmu/ddr_opp"

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .local v4, fos:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 372
    sget-boolean v5, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 373
    const-string v5, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "modifySysBusToValue:: DDR = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 377
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 379
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v5, "/debug/prcmu/ape_opp"

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3

    .line 380
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 381
    sget-boolean v5, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 382
    const-string v5, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "modifySysBusToValue:: APE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 387
    :cond_3
    if-eqz v3, :cond_0

    .line 388
    :goto_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 366
    .end local v0           #APE:I
    .end local v1           #DDR:I
    :cond_4
    const/16 v0, 0x32

    .line 367
    .restart local v0       #APE:I
    const/16 v1, 0x19

    .restart local v1       #DDR:I
    goto :goto_1

    .line 384
    :catch_0
    move-exception v2

    .line 385
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    :goto_3
    :try_start_3
    const-string v5, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UnsupportedEncodingException :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 387
    if-eqz v3, :cond_0

    goto :goto_2

    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v3, :cond_5

    .line 388
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 387
    :cond_5
    throw v5

    .line 392
    .end local v0           #APE:I
    .end local v1           #DDR:I
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :cond_6
    sget-boolean v5, Lcom/android/server/CustomFrequencyManagerService;->mSysBusPath:Z

    if-nez v5, :cond_7

    .line 393
    sget-boolean v5, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 394
    const-string v5, "CustomFrequencyManagerService"

    const-string v6, "modifySysBusToValue Returning: "

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 399
    :cond_7
    const/4 v3, 0x0

    .line 401
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :try_start_4
    new-instance v4, Ljava/io/FileOutputStream;

    const-string v5, "/sys/devices/system/cpu/busfreq/curr_freq"

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1

    .line 402
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :try_start_5
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 403
    sget-boolean v5, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v5, :cond_8

    .line 404
    const-string v5, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "$$$ modifySysBusToValue : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_2

    .line 409
    :cond_8
    if-eqz v4, :cond_9

    .line 410
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    :cond_9
    move-object v3, v4

    .line 411
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 406
    :catch_1
    move-exception v2

    .line 407
    .restart local v2       #e:Ljava/io/UnsupportedEncodingException;
    :goto_5
    :try_start_6
    const-string v5, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UnsupportedEncodingException :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 409
    if-eqz v3, :cond_0

    .line 410
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_0

    .line 409
    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    :catchall_1
    move-exception v5

    :goto_6
    if-eqz v3, :cond_a

    .line 410
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 409
    :cond_a
    throw v5

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_6

    .line 406
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v2

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 387
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #APE:I
    .restart local v1       #DDR:I
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v5

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 384
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_3
.end method

.method private revertCPUCoreToDefault()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 561
    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/devices/system/cpu/cpufreq/pegasusq/min_cpu_lock"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 562
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    const/4 v2, 0x0

    .line 568
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/sys/devices/system/cpu/cpufreq/pegasusq/min_cpu_lock"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 570
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 571
    const-string v4, "CustomFrequencyManagerService"

    const-string v5, "&&& revertCPUCoreToDefault : 0"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 575
    :cond_2
    if-eqz v3, :cond_3

    .line 576
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    move-object v2, v3

    .line 577
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 572
    :catch_0
    move-exception v0

    .line 573
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :goto_1
    :try_start_2
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UnsupportedEncodingException :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 575
    if-eqz v2, :cond_0

    .line 576
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 575
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_4

    .line 576
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 575
    :cond_4
    throw v4

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 572
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private revertGPUToDefault()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    sget-boolean v3, Lcom/android/server/CustomFrequencyManagerService;->mGpuPath:Z

    if-nez v3, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    const/4 v1, 0x0

    .line 337
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v3, Lcom/android/server/CustomFrequencyManagerService;->GPU_PATH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 339
    sget-boolean v3, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 340
    const-string v3, "CustomFrequencyManagerService"

    const-string v4, "### revertGPUToDefault : 0"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 345
    :cond_2
    if-eqz v2, :cond_3

    .line 346
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    move-object v1, v2

    .line 347
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :goto_1
    :try_start_2
    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnsupportedEncodingException :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 345
    if-eqz v1, :cond_0

    .line 346
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 345
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_4

    .line 346
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 345
    :cond_4
    throw v3

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 342
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private revertLCDFrameRateToDefault()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 515
    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/class/graphics/fb0/lcdfreq/level"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 516
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    const/4 v2, 0x0

    .line 522
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/sys/class/graphics/fb0/lcdfreq/level"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    const/4 v4, 0x1

    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 524
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 525
    const-string v4, "CustomFrequencyManagerService"

    const-string v5, "revertLCDFrameRateToDefault:: value = 1"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_4

    .line 530
    :cond_2
    if-eqz v3, :cond_3

    .line 532
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_3
    :goto_1
    move-object v2, v3

    .line 537
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :goto_2
    :try_start_3
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "revertLCDFrameRateToDefault:: UnsupportedEncodingException = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 530
    if-eqz v2, :cond_0

    .line 532
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 533
    :catch_1
    move-exception v0

    .line 534
    .local v0, e:Ljava/io/IOException;
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "revertLCDFrameRateToDefault:: IOException = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 530
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v2, :cond_4

    .line 532
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 530
    :cond_4
    :goto_4
    throw v4

    .line 533
    :catch_2
    move-exception v0

    .line 534
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "revertLCDFrameRateToDefault:: IOException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 533
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    .line 534
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "revertLCDFrameRateToDefault:: IOException = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 530
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 527
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private revertSysBusToDefault()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 416
    sget-boolean v3, Lcom/android/server/CustomFrequencyManagerService;->IS_AP_TYPE_DB8420:Z

    if-eqz v3, :cond_5

    .line 418
    sget-boolean v3, Lcom/android/server/CustomFrequencyManagerService;->mDdrOppPath:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/server/CustomFrequencyManagerService;->mApeOppPath:Z

    if-nez v3, :cond_1

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    const/4 v1, 0x0

    .line 425
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/debug/prcmu/ddr_opp"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 426
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 427
    sget-boolean v3, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 428
    const-string v3, "CustomFrequencyManagerService"

    const-string v4, "$$$ revertSysBusToDefault : 0"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 432
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 434
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v3, "/debug/prcmu/ape_opp"

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_9

    .line 435
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    :try_start_2
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 437
    sget-boolean v3, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 438
    const-string v3, "CustomFrequencyManagerService"

    const-string v4, "$$$ revertSysBusToDefault : 0"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 444
    :cond_3
    if-eqz v1, :cond_0

    .line 446
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, e:Ljava/io/IOException;
    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "revertSysBusToDefault : IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 441
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 442
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :goto_2
    :try_start_4
    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnsupportedEncodingException :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 444
    if-eqz v1, :cond_0

    .line 446
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 447
    :catch_2
    move-exception v0

    .line 448
    .local v0, e:Ljava/io/IOException;
    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "revertSysBusToDefault : IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 444
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_4

    .line 446
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 444
    :cond_4
    :goto_4
    throw v3

    .line 453
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :cond_5
    sget-boolean v3, Lcom/android/server/CustomFrequencyManagerService;->mSysBusPath:Z

    if-eqz v3, :cond_0

    .line 457
    const/4 v1, 0x0

    .line 459
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :try_start_7
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/sys/devices/system/cpu/busfreq/curr_freq"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_3

    .line 460
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    :try_start_8
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 461
    sget-boolean v3, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_6

    .line 462
    const-string v3, "CustomFrequencyManagerService"

    const-string v4, "$$$ revertSysBusToDefault : 0"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_8

    .line 467
    :cond_6
    if-eqz v2, :cond_7

    .line 469
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :cond_7
    :goto_5
    move-object v1, v2

    .line 473
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 464
    :catch_3
    move-exception v0

    .line 465
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :goto_6
    :try_start_a
    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnsupportedEncodingException :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 467
    if-eqz v1, :cond_0

    .line 469
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_0

    .line 470
    :catch_4
    move-exception v0

    .line 471
    .local v0, e:Ljava/io/IOException;
    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "revertSysBusToDefault : IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 467
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v3

    :goto_7
    if-eqz v1, :cond_8

    .line 469
    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 467
    :cond_8
    :goto_8
    throw v3

    .line 447
    :catch_5
    move-exception v0

    .line 448
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "revertSysBusToDefault : IOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 470
    .end local v0           #e:Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 471
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "revertSysBusToDefault : IOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 470
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    .line 471
    .restart local v0       #e:Ljava/io/IOException;
    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "revertSysBusToDefault : IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 467
    .end local v0           #e:Ljava/io/IOException;
    :catchall_2
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_7

    .line 464
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_8
    move-exception v0

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_6

    .line 444
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 441
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_9
    move-exception v0

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_2
.end method

.method private verifyDefaultCondition()V
    .locals 11

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 169
    .local v0, buf:Ljava/io/BufferedReader;
    sget-boolean v7, Lcom/android/server/CustomFrequencyManagerService;->mGpuPath:Z

    if-eqz v7, :cond_3

    .line 171
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    sget-object v8, Lcom/android/server/CustomFrequencyManagerService;->GPU_PATH:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v0           #buf:Ljava/io/BufferedReader;
    .local v1, buf:Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 175
    .local v6, parsedRet:[Ljava/lang/String;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, gpuSysfsRet:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 177
    const-string v7, ", count = "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 178
    if-eqz v6, :cond_1

    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 179
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 180
    .local v5, numOfLock:I
    sget-boolean v7, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 181
    const-string v7, "CustomFrequencyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "verifyDefaultCondition : numOfLock = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 184
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->revertGPUToDefault()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 183
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 191
    .end local v4           #i:I
    .end local v5           #numOfLock:I
    :cond_1
    if-eqz v1, :cond_2

    .line 193
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_2
    :goto_1
    move-object v0, v1

    .line 200
    .end local v1           #buf:Ljava/io/BufferedReader;
    .end local v3           #gpuSysfsRet:Ljava/lang/String;
    .end local v6           #parsedRet:[Ljava/lang/String;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :cond_3
    :goto_2
    sget-boolean v7, Lcom/android/server/CustomFrequencyManagerService;->mSysBusPath:Z

    if-nez v7, :cond_4

    sget-boolean v7, Lcom/android/server/CustomFrequencyManagerService;->mDdrOppPath:Z

    if-nez v7, :cond_4

    sget-boolean v7, Lcom/android/server/CustomFrequencyManagerService;->mApeOppPath:Z

    if-eqz v7, :cond_5

    .line 202
    :cond_4
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->revertSysBusToDefault()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 208
    :cond_5
    :goto_3
    sget-boolean v7, Lcom/android/server/CustomFrequencyManagerService;->mCpuCorePath:Z

    if-eqz v7, :cond_6

    .line 210
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->revertCPUCoreToDefault()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 215
    :cond_6
    :goto_4
    return-void

    .line 188
    :catch_0
    move-exception v2

    .line 189
    .local v2, e:Ljava/lang/Exception;
    :goto_5
    :try_start_5
    const-string v7, "CustomFrequencyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "verifyDefaultCondition : Exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 191
    if-eqz v0, :cond_3

    .line 193
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 194
    :catch_1
    move-exception v2

    .line 195
    .local v2, e:Ljava/io/IOException;
    const-string v7, "CustomFrequencyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "verifyDefaultCondition : IOException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 191
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v0, :cond_7

    .line 193
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 191
    :cond_7
    :goto_7
    throw v7

    .line 203
    :catch_2
    move-exception v2

    .line 204
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "CustomFrequencyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "verifyDefaultCondition : Exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 211
    .end local v2           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 212
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v7, "CustomFrequencyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "verifyDefaultCondition : Exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 194
    .end local v2           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 195
    .local v2, e:Ljava/io/IOException;
    const-string v8, "CustomFrequencyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "verifyDefaultCondition : IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 194
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v3       #gpuSysfsRet:Ljava/lang/String;
    .restart local v6       #parsedRet:[Ljava/lang/String;
    :catch_5
    move-exception v2

    .line 195
    .restart local v2       #e:Ljava/io/IOException;
    const-string v7, "CustomFrequencyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "verifyDefaultCondition : IOException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 191
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #gpuSysfsRet:Ljava/lang/String;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_6

    .line 188
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto/16 :goto_5
.end method


# virtual methods
.method public checkCPUCoreRange(I)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 304
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 305
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 306
    const/4 v1, 0x1

    .line 308
    :goto_1
    return v1

    .line 304
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public checkFrameRateRange(I)Z
    .locals 3
    .parameter "value"

    .prologue
    .line 291
    const/16 v0, 0x28

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x33

    if-eq p1, v0, :cond_0

    const/16 v0, 0x32

    if-ne p1, v0, :cond_2

    .line 292
    :cond_0
    sget-boolean v0, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 293
    const-string v0, "CustomFrequencyManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkFrameRateRange : In RANGE!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_1
    const/4 v0, 0x1

    .line 300
    :goto_0
    return v0

    .line 297
    :cond_2
    sget-boolean v0, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 298
    const-string v0, "CustomFrequencyManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkFrameRateRange : Not In RANGE!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkGPUFrequencyRange(I)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 269
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 270
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 271
    const/4 v1, 0x1

    .line 273
    :goto_1
    return v1

    .line 269
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public checkSysBusFrequencyRange(I)Z
    .locals 4
    .parameter "value"

    .prologue
    .line 277
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 278
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSysBusFrequencyRange : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 281
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 282
    const/4 v1, 0x1

    .line 287
    :goto_1
    return v1

    .line 280
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_2
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 285
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSysBusFrequencyRange : NOT in RANGE!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getSupportedGPUFrequency()[I
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    return-object v0
.end method

.method public getSupportedSysBusFrequency()[I
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    return-object v0
.end method

.method public releaseCPUCore(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 8
    .parameter "binder"
    .parameter "pkgName"

    .prologue
    .line 932
    iget-object v5, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v5

    .line 933
    const/4 v1, 0x0

    .line 935
    .local v1, freqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    const/4 v6, 0x4

    invoke-virtual {v4, p1, v6, p2}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->removeRequest(Landroid/os/IBinder;ILjava/lang/String;)Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v1

    .line 936
    if-nez v1, :cond_3

    .line 937
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 938
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseCPUCore, request not found, returning null"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 973
    :cond_0
    if-eqz v1, :cond_2

    .line 974
    :try_start_1
    iget-object v3, v1, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 975
    .local v3, tempBinder:Landroid/os/IBinder;
    if-eqz v3, :cond_1

    .line 976
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 978
    :cond_1
    const/4 v1, 0x0

    .line 940
    .end local v3           #tempBinder:Landroid/os/IBinder;
    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 983
    :goto_0
    return-void

    .line 943
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentCPUCoreRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v1, v4, :cond_6

    .line 944
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_4

    .line 945
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseCPUCore, Current CPU Core request has asked for release"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_4
    iget-object v4, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->getNextMaxCPUCoreRequest()Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v2

    .line 950
    .local v2, nextCPUCoreRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    if-eqz v2, :cond_9

    .line 951
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_5

    .line 952
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseCPUCore, there is a pending request in list, modifying with value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_5
    iget v4, v2, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-direct {p0, v4}, Lcom/android/server/CustomFrequencyManagerService;->modifyCPUCoreToValue(I)V

    .line 955
    iput-object v2, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentCPUCoreRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 973
    .end local v2           #nextCPUCoreRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :cond_6
    :goto_1
    if-eqz v1, :cond_8

    .line 974
    :try_start_3
    iget-object v3, v1, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 975
    .restart local v3       #tempBinder:Landroid/os/IBinder;
    if-eqz v3, :cond_7

    .line 976
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 978
    :cond_7
    :goto_2
    const/4 v1, 0x0

    .line 982
    .end local v3           #tempBinder:Landroid/os/IBinder;
    :cond_8
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 957
    .restart local v2       #nextCPUCoreRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :cond_9
    :try_start_4
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_a

    .line 958
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseCPUCore, No Pending requests, reverting CPU Core to default"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    :cond_a
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->revertCPUCoreToDefault()V

    .line 961
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentCPUCoreRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 965
    .end local v2           #nextCPUCoreRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :catch_0
    move-exception v0

    .line 966
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_5
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseCPUCore: FileNotFoundException :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 973
    if-eqz v1, :cond_8

    .line 974
    :try_start_6
    iget-object v3, v1, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 975
    .restart local v3       #tempBinder:Landroid/os/IBinder;
    if-eqz v3, :cond_7

    .line 976
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 968
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v3           #tempBinder:Landroid/os/IBinder;
    :catch_1
    move-exception v0

    .line 969
    .local v0, e:Ljava/io/IOException;
    :try_start_7
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseCPUCore: IOException :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 973
    if-eqz v1, :cond_8

    .line 974
    :try_start_8
    iget-object v3, v1, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 975
    .restart local v3       #tempBinder:Landroid/os/IBinder;
    if-eqz v3, :cond_7

    .line 976
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_2

    .line 973
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #tempBinder:Landroid/os/IBinder;
    :catchall_1
    move-exception v4

    if-eqz v1, :cond_c

    .line 974
    iget-object v3, v1, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 975
    .restart local v3       #tempBinder:Landroid/os/IBinder;
    if-eqz v3, :cond_b

    .line 976
    const/4 v6, 0x0

    invoke-interface {v3, v1, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 978
    :cond_b
    const/4 v1, 0x0

    .line 973
    .end local v3           #tempBinder:Landroid/os/IBinder;
    :cond_c
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public releaseGPU(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 8
    .parameter "binder"
    .parameter "pkgName"

    .prologue
    .line 649
    iget-object v5, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v5

    .line 650
    const/4 v1, 0x0

    .line 652
    .local v1, freqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    const/4 v6, 0x1

    invoke-virtual {v4, p1, v6, p2}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->removeRequest(Landroid/os/IBinder;ILjava/lang/String;)Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v1

    .line 653
    if-nez v1, :cond_3

    .line 654
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 655
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseGPU, request not found, returning null"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 691
    :cond_0
    if-eqz v1, :cond_2

    .line 692
    :try_start_1
    iget-object v3, v1, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 693
    .local v3, tempBinder:Landroid/os/IBinder;
    if-eqz v3, :cond_1

    .line 694
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 696
    :cond_1
    const/4 v1, 0x0

    .line 657
    .end local v3           #tempBinder:Landroid/os/IBinder;
    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 701
    :goto_0
    return-void

    .line 660
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v1, v4, :cond_6

    .line 661
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_4

    .line 662
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseGPU, Current GPU request has asked for release"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_4
    iget-object v4, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->getNextMaxGPURequest()Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v2

    .line 666
    .local v2, nextGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    if-eqz v2, :cond_9

    .line 667
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_5

    .line 668
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseGPU, there is a pending request in list, modifying with value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_5
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->revertGPUToDefault()V

    .line 672
    iget v4, v2, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-direct {p0, v4}, Lcom/android/server/CustomFrequencyManagerService;->modifyGPUToValue(I)V

    .line 673
    iput-object v2, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 691
    .end local v2           #nextGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :cond_6
    :goto_1
    if-eqz v1, :cond_8

    .line 692
    :try_start_3
    iget-object v3, v1, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 693
    .restart local v3       #tempBinder:Landroid/os/IBinder;
    if-eqz v3, :cond_7

    .line 694
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 696
    :cond_7
    :goto_2
    const/4 v1, 0x0

    .line 700
    .end local v3           #tempBinder:Landroid/os/IBinder;
    :cond_8
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 675
    .restart local v2       #nextGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :cond_9
    :try_start_4
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_a

    .line 676
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseGPU, No Pending requests, reverting GPU to default"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_a
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->revertGPUToDefault()V

    .line 679
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 683
    .end local v2           #nextGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :catch_0
    move-exception v0

    .line 684
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_5
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseGPULock: FileNotFoundException :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 691
    if-eqz v1, :cond_8

    .line 692
    :try_start_6
    iget-object v3, v1, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 693
    .restart local v3       #tempBinder:Landroid/os/IBinder;
    if-eqz v3, :cond_7

    .line 694
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 686
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v3           #tempBinder:Landroid/os/IBinder;
    :catch_1
    move-exception v0

    .line 687
    .local v0, e:Ljava/io/IOException;
    :try_start_7
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseGPULock: IOException :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 691
    if-eqz v1, :cond_8

    .line 692
    :try_start_8
    iget-object v3, v1, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 693
    .restart local v3       #tempBinder:Landroid/os/IBinder;
    if-eqz v3, :cond_7

    .line 694
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_2

    .line 691
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #tempBinder:Landroid/os/IBinder;
    :catchall_1
    move-exception v4

    if-eqz v1, :cond_c

    .line 692
    iget-object v3, v1, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 693
    .restart local v3       #tempBinder:Landroid/os/IBinder;
    if-eqz v3, :cond_b

    .line 694
    const/4 v6, 0x0

    invoke-interface {v3, v1, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 696
    :cond_b
    const/4 v1, 0x0

    .line 691
    .end local v3           #tempBinder:Landroid/os/IBinder;
    :cond_c
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public releaseSysBus(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 8
    .parameter "binder"
    .parameter "pkgName"

    .prologue
    .line 756
    iget-object v5, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v5

    .line 757
    const/4 v1, 0x0

    .line 759
    .local v1, freqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    const/4 v6, 0x2

    invoke-virtual {v4, p1, v6, p2}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->removeRequest(Landroid/os/IBinder;ILjava/lang/String;)Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v1

    .line 760
    if-nez v1, :cond_3

    .line 761
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 762
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseSysBus, request not found, returning null"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 798
    :cond_0
    if-eqz v1, :cond_2

    .line 799
    :try_start_1
    iget-object v3, v1, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 800
    .local v3, tempBinder:Landroid/os/IBinder;
    if-eqz v3, :cond_1

    .line 801
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 803
    :cond_1
    const/4 v1, 0x0

    .line 764
    .end local v3           #tempBinder:Landroid/os/IBinder;
    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 808
    :goto_0
    return-void

    .line 767
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v1, v4, :cond_6

    .line 768
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_4

    .line 769
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseSysBus, Current SysBus request has asked for release"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_4
    iget-object v4, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->getNextMaxSysBusRequest()Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v2

    .line 774
    .local v2, nextSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    if-eqz v2, :cond_9

    .line 775
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_5

    .line 776
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseSysBus, there is a pending request in list, modifying with value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :cond_5
    iget v4, v2, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-direct {p0, v4}, Lcom/android/server/CustomFrequencyManagerService;->modifySysBusToValue(I)V

    .line 780
    iput-object v2, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 798
    .end local v2           #nextSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :cond_6
    :goto_1
    if-eqz v1, :cond_8

    .line 799
    :try_start_3
    iget-object v3, v1, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 800
    .restart local v3       #tempBinder:Landroid/os/IBinder;
    if-eqz v3, :cond_7

    .line 801
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 803
    :cond_7
    :goto_2
    const/4 v1, 0x0

    .line 807
    .end local v3           #tempBinder:Landroid/os/IBinder;
    :cond_8
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 782
    .restart local v2       #nextSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :cond_9
    :try_start_4
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_a

    .line 783
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseSysBus, No Pending requests, reverting SysBus to default"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_a
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->revertSysBusToDefault()V

    .line 786
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 790
    .end local v2           #nextSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :catch_0
    move-exception v0

    .line 791
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_5
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseSysBus: FileNotFoundException :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 798
    if-eqz v1, :cond_8

    .line 799
    :try_start_6
    iget-object v3, v1, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 800
    .restart local v3       #tempBinder:Landroid/os/IBinder;
    if-eqz v3, :cond_7

    .line 801
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 793
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v3           #tempBinder:Landroid/os/IBinder;
    :catch_1
    move-exception v0

    .line 794
    .local v0, e:Ljava/io/IOException;
    :try_start_7
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseSysBus: IOException :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 798
    if-eqz v1, :cond_8

    .line 799
    :try_start_8
    iget-object v3, v1, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 800
    .restart local v3       #tempBinder:Landroid/os/IBinder;
    if-eqz v3, :cond_7

    .line 801
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_2

    .line 798
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #tempBinder:Landroid/os/IBinder;
    :catchall_1
    move-exception v4

    if-eqz v1, :cond_c

    .line 799
    iget-object v3, v1, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 800
    .restart local v3       #tempBinder:Landroid/os/IBinder;
    if-eqz v3, :cond_b

    .line 801
    const/4 v6, 0x0

    invoke-interface {v3, v1, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 803
    :cond_b
    const/4 v1, 0x0

    .line 798
    .end local v3           #tempBinder:Landroid/os/IBinder;
    :cond_c
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public requestCPUCore(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 11
    .parameter "frequency"
    .parameter "binder"
    .parameter "pkgName"

    .prologue
    .line 876
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 877
    .local v6, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 879
    .local v7, pid:I
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 880
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCPUCore, Core # : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :cond_0
    iget-object v10, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v10

    .line 885
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/CustomFrequencyManagerService;->checkCPUCoreRange(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_7

    .line 887
    :try_start_1
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    const/4 v2, 0x4

    invoke-virtual {v1, p2, v2, p3}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->getIndex(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v9

    .line 889
    .local v9, index:I
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 890
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCPUCore, index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_1
    if-gez v9, :cond_6

    .line 893
    new-instance v0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    const/4 v2, 0x4

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;-><init>(Lcom/android/server/CustomFrequencyManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 895
    .local v0, newFreqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v0}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->addRequest(Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;)V

    .line 897
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 898
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestCPUCore, index not found, new req added in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentCPUCoreRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v2, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentCPUCoreRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-le v1, v2, :cond_5

    .line 910
    :cond_3
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 911
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestCPUCore, Going tochange the CPU Core value"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_4
    iget v1, v0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-direct {p0, v1}, Lcom/android/server/CustomFrequencyManagerService;->modifyCPUCoreToValue(I)V

    .line 915
    iput-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentCPUCoreRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 928
    .end local v0           #newFreqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9           #index:I
    :cond_5
    :goto_1
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 929
    return-void

    .line 901
    .restart local v9       #index:I
    :cond_6
    :try_start_3
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v9}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    .line 902
    .restart local v0       #newFreqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 903
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestCPUCore, request already in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 917
    .end local v0           #newFreqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9           #index:I
    :catch_0
    move-exception v8

    .line 918
    .local v8, e:Ljava/io/FileNotFoundException;
    :try_start_4
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCPUCore: FileNotFoundException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 928
    .end local v8           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 920
    :catch_1
    move-exception v8

    .line 921
    .local v8, e:Ljava/io/IOException;
    :try_start_5
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCPUCore: IOException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 925
    .end local v8           #e:Ljava/io/IOException;
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "CPUCore value is not in the permitted range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public requestGPU(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 11
    .parameter "frequency"
    .parameter "binder"
    .parameter "pkgName"

    .prologue
    .line 589
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 590
    .local v6, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 592
    .local v7, pid:I
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 593
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestGPU, frequency : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_0
    iget-object v10, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v10

    .line 596
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/CustomFrequencyManagerService;->checkGPUFrequencyRange(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_8

    .line 598
    :try_start_1
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2, p3}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->getIndex(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v9

    .line 601
    .local v9, index:I
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 602
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestGPU, index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_1
    if-gez v9, :cond_5

    .line 605
    new-instance v0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    const/4 v2, 0x1

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;-><init>(Lcom/android/server/CustomFrequencyManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 607
    .local v0, newFreqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v0}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->addRequest(Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;)V

    .line 608
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 609
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestGPU, index not found, new req added in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    if-nez v1, :cond_6

    .line 621
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 622
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestGPU:: Going to change the GPU value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_3
    iget v1, v0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-direct {p0, v1}, Lcom/android/server/CustomFrequencyManagerService;->modifyGPUToValue(I)V

    .line 625
    iput-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 644
    .end local v0           #newFreqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9           #index:I
    :cond_4
    :goto_1
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 646
    return-void

    .line 612
    .restart local v9       #index:I
    :cond_5
    :try_start_3
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v9}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    .line 613
    .restart local v0       #newFreqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 614
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestGPU, request already in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 635
    .end local v0           #newFreqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9           #index:I
    :catch_0
    move-exception v8

    .line 636
    .local v8, e:Ljava/io/FileNotFoundException;
    :try_start_4
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestGPU: FileNotFoundException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 644
    .end local v8           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 626
    .restart local v0       #newFreqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    .restart local v9       #index:I
    :cond_6
    :try_start_5
    iget v1, v0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v2, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-lt v1, v2, :cond_4

    .line 628
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->revertGPUToDefault()V

    .line 629
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_7

    .line 630
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestGPU:: Going to change the GPU value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_7
    iget v1, v0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-direct {p0, v1}, Lcom/android/server/CustomFrequencyManagerService;->modifyGPUToValue(I)V

    .line 633
    iput-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 638
    .end local v0           #newFreqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9           #index:I
    :catch_1
    move-exception v8

    .line 639
    .local v8, e:Ljava/io/IOException;
    :try_start_6
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestGPU: IOException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 643
    .end local v8           #e:Ljava/io/IOException;
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "GPU Frequency value is not in the permitted range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public requestLCDFrameRate(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 3
    .parameter "frequency"
    .parameter "binder"
    .parameter "pkgName"

    .prologue
    .line 811
    sget-object v1, Lcom/android/server/CustomFrequencyManagerService;->LCD_FRAMERATE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 812
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/CustomFrequencyManagerService;->checkFrameRateRange(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/CustomFrequencyManagerService;->modifyFrameRateToValue(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 825
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 826
    return-void

    .line 823
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Frame rate value is not in the permitted range."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 825
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 815
    :catch_0
    move-exception v0

    goto :goto_0

    .line 818
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public requestMpParameterUpdate(Ljava/lang/String;)V
    .locals 9
    .parameter "command"

    .prologue
    .line 843
    sget-boolean v6, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 844
    const-string v6, "CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Update the Nw paramter in the MPDecision command : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_0
    if-eqz p1, :cond_1

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_1

    .line 848
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected command: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 851
    :cond_1
    move-object v5, p1

    .line 853
    .local v5, send:Ljava/lang/String;
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    .line 854
    .local v2, localSocket:Landroid/net/LocalSocket;
    const/4 v4, 0x0

    .line 856
    .local v4, out:Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Landroid/net/LocalSocketAddress;

    const-string v6, "MPDECISION_SOCKET"

    invoke-direct {v3, v6}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    .line 857
    .local v3, localSocketAddress:Landroid/net/LocalSocketAddress;
    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 858
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 859
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    if-eqz v4, :cond_2

    .line 866
    :try_start_1
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 867
    :cond_2
    if-eqz v2, :cond_3

    .line 868
    :try_start_2
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 873
    .end local v3           #localSocketAddress:Landroid/net/LocalSocketAddress;
    :cond_3
    :goto_0
    return-void

    .line 860
    :catch_0
    move-exception v0

    .line 861
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v6, "CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in requestMpParameterUpdate :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 865
    if-eqz v4, :cond_4

    .line 866
    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 867
    :cond_4
    if-eqz v2, :cond_3

    .line 868
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 869
    :catch_1
    move-exception v1

    .line 870
    .end local v0           #e:Ljava/lang/Exception;
    .local v1, ex:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 864
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 865
    if-eqz v4, :cond_5

    .line 866
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 867
    :cond_5
    if-eqz v2, :cond_6

    .line 868
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 864
    :cond_6
    :goto_2
    throw v6

    .line 869
    :catch_2
    move-exception v1

    .line 870
    .restart local v1       #ex:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 869
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v3       #localSocketAddress:Landroid/net/LocalSocketAddress;
    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public requestSysBus(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 11
    .parameter "frequency"
    .parameter "binder"
    .parameter "pkgName"

    .prologue
    .line 705
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 706
    .local v6, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 708
    .local v7, pid:I
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 709
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSysBus, frequency : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_0
    iget-object v10, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v10

    .line 713
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/CustomFrequencyManagerService;->checkSysBusFrequencyRange(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_7

    .line 715
    :try_start_1
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    const/4 v2, 0x2

    invoke-virtual {v1, p2, v2, p3}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->getIndex(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v9

    .line 717
    .local v9, index:I
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 718
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSysBus, index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_1
    if-gez v9, :cond_6

    .line 721
    new-instance v0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    const/4 v2, 0x2

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;-><init>(Lcom/android/server/CustomFrequencyManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 723
    .local v0, newFreqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v0}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->addRequest(Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;)V

    .line 724
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 725
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestSysBus, index not found, new req added in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v2, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-le v1, v2, :cond_5

    .line 736
    :cond_3
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 737
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestSysBus, Going tochange the GPU value"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_4
    iget v1, v0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-direct {p0, v1}, Lcom/android/server/CustomFrequencyManagerService;->modifySysBusToValue(I)V

    .line 740
    iput-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 751
    .end local v0           #newFreqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9           #index:I
    :cond_5
    :goto_1
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 753
    return-void

    .line 728
    .restart local v9       #index:I
    :cond_6
    :try_start_3
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v9}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    .line 729
    .restart local v0       #newFreqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 730
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestSysBus, request already in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 742
    .end local v0           #newFreqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9           #index:I
    :catch_0
    move-exception v8

    .line 743
    .local v8, e:Ljava/io/FileNotFoundException;
    :try_start_4
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSysBus: FileNotFoundException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 751
    .end local v8           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 745
    :catch_1
    move-exception v8

    .line 746
    .local v8, e:Ljava/io/IOException;
    :try_start_5
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSysBus: IOException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 750
    .end local v8           #e:Ljava/io/IOException;
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "SysBus Frequency value is not in the permitted range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public restoreLCDFrameRate(Landroid/os/IBinder;)V
    .locals 5
    .parameter "binder"

    .prologue
    .line 829
    sget-object v2, Lcom/android/server/CustomFrequencyManagerService;->LCD_FRAMERATE_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 831
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->revertLCDFrameRateToDefault()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 839
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 840
    return-void

    .line 832
    :catch_0
    move-exception v0

    .line 833
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v1, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreLCDFrameRate:: FileNotFoundException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 839
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 835
    :catch_1
    move-exception v0

    .line 836
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    const-string v1, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreLCDFrameRate:: IOException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
