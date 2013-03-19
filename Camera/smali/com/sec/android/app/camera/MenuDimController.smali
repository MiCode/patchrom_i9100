.class public Lcom/sec/android/app/camera/MenuDimController;
.super Ljava/lang/Object;
.source "MenuDimController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/MenuDimController$DimArray;,
        Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;
    }
.end annotation


# static fields
.field public static final ANTI_SHAKE:I = 0x2

.field public static final AUTOCONTRAST:I = 0x4

.field public static final BRIGHTNESS:I = 0x3

.field public static final BURST_SETTINGS:I = 0x31

.field public static final CAMCORDER_ADJUST:I = 0x21

.field public static final CAMCORDER_ANTISHAKE:I = 0x2c

.field public static final CAMCORDER_AUTOCONTRAST:I = 0x26

.field public static final CAMCORDER_CONTEXTUAL_FILENAME:I = 0x33

.field public static final CAMCORDER_EFFECT:I = 0x1f

.field public static final CAMCORDER_EFFECT_RECORDER:I = 0x2f

.field public static final CAMCORDER_EXPOSURE_VALUE:I = 0x1d

.field public static final CAMCORDER_FLASH_MODE:I = 0x25

.field public static final CAMCORDER_MODE_SWITCH:I = 0x19

.field public static final CAMCORDER_RESOLUTION:I = 0x1e

.field public static final CAMCORDER_REVIEW:I = 0x22

.field public static final CAMCORDER_SCENE_MODE:I = 0x1c

.field public static final CAMCORDER_SELF_SWITCH:I = 0x1a

.field public static final CAMCORDER_STORAGE:I = 0x23

.field public static final CAMCORDER_TIMELAPSE:I = 0x34

.field public static final CAMCORDER_VOICECOMMAND:I = 0x38

.field public static final CAMCORDER_VOLUMEKEY:I = 0x3a

.field public static final CAMCORDER_WHITEBALANCE:I = 0x20

.field public static final CAMCORDER_ZOOM:I = 0x27

.field public static final CAMERA_MODE_SWITCH:I = 0x0

.field public static final CAMERA_QUALITY:I = 0x30

.field public static final CAMERA_SELF_SWITCH:I = 0x1

.field public static final CONTEXTUAL_FILENAME:I = 0x32

.field public static final DEVICELIST:I = 0x2a

.field public static final EFFECT:I = 0x8

.field public static final EXPOSURE_VALUE:I = 0x10

.field public static final FLASH_MODE:I = 0xb

.field public static final FLIP:I = 0x28

.field public static final FOCUS_MODE:I = 0xc

.field public static final GUIDELINE:I = 0x17

.field public static final IMAGE_VIEWER:I = 0x18

.field public static final ISO:I = 0x7

.field public static final METERING:I = 0xe

.field public static final NUM_OF_DIM_BUTTONS:I = 0x3b

.field public static final OUTDOOR_VISIBILITY:I = 0x35

.field public static final RECORDING_MODE:I = 0x1b

.field public static final RECORDING_SPEED:I = 0x2e

.field public static final REFRESH:I = 0x2b

.field public static final RESOLUTION:I = 0x11

.field public static final REVIEW:I = 0x15

.field public static final SCENE_MODE:I = 0x5

.field public static final SETTINGS:I = 0x36

.field public static final SHOOTANDSHARE:I = 0x29

.field public static final SHOOTING_MODE:I = 0x6

.field public static final SHUTTER_SOUND:I = 0x24

.field public static final SMILE_SHOT:I = 0xa

.field public static final STORAGE:I = 0x16

.field private static final TAG:Ljava/lang/String; = "MenuDimController"

.field public static final TIMER:I = 0x14

.field public static final VOICECOMMAND:I = 0x37

.field public static final VOLUMEKEY:I = 0x39

.field public static final WHITEBALANCE:I = 0x12

.field public static final ZOOM:I = 0x9


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/glwidget/TwGLItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckSceneModeSet:Z

.field private mCheckShootingModeSet:Z

.field private mCurrentDimArray:[Z

.field private mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/MenuDimController$DimArray;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFlashDimmed:Z

.field private mLowBattery:Z

.field private mPreFlashValueForShootingMode:I

.field private mPreviousFlashValue:I

.field private mPreviousMeteringValue:I

.field private mSavedExposureOffset:I

.field private mUserSettingValueList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .locals 3
    .parameter "activityContext"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 134
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/16 v0, 0x3b

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;

    .line 98
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    .line 100
    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mLowBattery:Z

    .line 101
    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    .line 102
    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mIsFlashDimmed:Z

    .line 103
    iput v2, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousFlashValue:I

    .line 104
    iput v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousMeteringValue:I

    .line 106
    iput v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mSavedExposureOffset:I

    .line 111
    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckShootingModeSet:Z

    .line 112
    iput v2, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreFlashValueForShootingMode:I

    .line 135
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/MenuDimController;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/MenuDimController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mSavedExposureOffset:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/MenuDimController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lcom/sec/android/app/camera/MenuDimController;->mSavedExposureOffset:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/MenuDimController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousFlashValue:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/MenuDimController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousMeteringValue:I

    return v0
.end method

.method private getkeyFromCommandId(I)I
    .locals 1
    .parameter "commandId"

    .prologue
    .line 690
    const/4 v0, -0x1

    .line 692
    .local v0, key:I
    sparse-switch p1, :sswitch_data_0

    .line 837
    :goto_0
    :sswitch_0
    return v0

    .line 694
    :sswitch_1
    const/4 v0, 0x0

    .line 695
    goto :goto_0

    .line 697
    :sswitch_2
    const/4 v0, 0x6

    .line 698
    goto :goto_0

    .line 700
    :sswitch_3
    const/4 v0, 0x5

    .line 701
    goto :goto_0

    .line 703
    :sswitch_4
    const/16 v0, 0xb

    .line 704
    goto :goto_0

    .line 706
    :sswitch_5
    const/16 v0, 0x11

    .line 707
    goto :goto_0

    .line 709
    :sswitch_6
    const/16 v0, 0xc

    .line 710
    goto :goto_0

    .line 712
    :sswitch_7
    const/16 v0, 0x14

    .line 713
    goto :goto_0

    .line 715
    :sswitch_8
    const/16 v0, 0x10

    .line 716
    goto :goto_0

    .line 718
    :sswitch_9
    const/16 v0, 0x8

    .line 719
    goto :goto_0

    .line 721
    :sswitch_a
    const/16 v0, 0x12

    .line 722
    goto :goto_0

    .line 724
    :sswitch_b
    const/4 v0, 0x7

    .line 725
    goto :goto_0

    .line 727
    :sswitch_c
    const/16 v0, 0xe

    .line 728
    goto :goto_0

    .line 730
    :sswitch_d
    const/4 v0, 0x2

    .line 731
    goto :goto_0

    .line 733
    :sswitch_e
    const/4 v0, 0x4

    .line 734
    goto :goto_0

    .line 736
    :sswitch_f
    const/16 v0, 0x15

    .line 737
    goto :goto_0

    .line 739
    :sswitch_10
    const/16 v0, 0x39

    .line 740
    goto :goto_0

    .line 742
    :sswitch_11
    const/16 v0, 0x37

    .line 743
    goto :goto_0

    .line 745
    :sswitch_12
    const/16 v0, 0x38

    .line 746
    goto :goto_0

    .line 748
    :sswitch_13
    const/16 v0, 0x9

    .line 749
    goto :goto_0

    .line 751
    :sswitch_14
    const/16 v0, 0x17

    .line 752
    goto :goto_0

    .line 754
    :sswitch_15
    const/16 v0, 0x16

    .line 755
    goto :goto_0

    .line 757
    :sswitch_16
    const/16 v0, 0x18

    .line 758
    goto :goto_0

    .line 760
    :sswitch_17
    const/4 v0, 0x1

    .line 761
    goto :goto_0

    .line 763
    :sswitch_18
    const/16 v0, 0x1a

    .line 764
    goto :goto_0

    .line 766
    :sswitch_19
    const/16 v0, 0x19

    .line 767
    goto :goto_0

    .line 769
    :sswitch_1a
    const/16 v0, 0x1b

    .line 770
    goto :goto_0

    .line 772
    :sswitch_1b
    const/16 v0, 0x1e

    .line 773
    goto :goto_0

    .line 775
    :sswitch_1c
    const/16 v0, 0x20

    .line 776
    goto :goto_0

    .line 778
    :sswitch_1d
    const/16 v0, 0x1f

    .line 779
    goto :goto_0

    .line 781
    :sswitch_1e
    const/16 v0, 0x1d

    .line 782
    goto :goto_0

    .line 784
    :sswitch_1f
    const/16 v0, 0x22

    .line 785
    goto :goto_0

    .line 787
    :sswitch_20
    const/16 v0, 0x3a

    .line 788
    goto :goto_0

    .line 790
    :sswitch_21
    const/16 v0, 0x23

    .line 791
    goto :goto_0

    .line 793
    :sswitch_22
    const/16 v0, 0x2c

    .line 794
    goto :goto_0

    .line 796
    :sswitch_23
    const/16 v0, 0x25

    .line 797
    goto :goto_0

    .line 799
    :sswitch_24
    const/16 v0, 0x26

    .line 800
    goto :goto_0

    .line 802
    :sswitch_25
    const/16 v0, 0x2a

    .line 803
    goto :goto_0

    .line 805
    :sswitch_26
    const/16 v0, 0x29

    .line 806
    goto :goto_0

    .line 808
    :sswitch_27
    const/16 v0, 0x28

    .line 809
    goto :goto_0

    .line 816
    :sswitch_28
    const/16 v0, 0x30

    .line 817
    goto :goto_0

    .line 819
    :sswitch_29
    const/16 v0, 0x31

    .line 820
    goto :goto_0

    .line 822
    :sswitch_2a
    const/16 v0, 0x32

    .line 823
    goto :goto_0

    .line 825
    :sswitch_2b
    const/16 v0, 0x33

    .line 826
    goto :goto_0

    .line 828
    :sswitch_2c
    const/16 v0, 0x35

    .line 829
    goto :goto_0

    .line 831
    :sswitch_2d
    const/16 v0, 0x36

    .line 832
    goto :goto_0

    .line 692
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_a
        0xa -> :sswitch_b
        0xb -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0x10 -> :sswitch_28
        0x11 -> :sswitch_f
        0x12 -> :sswitch_13
        0x13 -> :sswitch_14
        0x16 -> :sswitch_15
        0x1b -> :sswitch_2d
        0x1d -> :sswitch_16
        0x23 -> :sswitch_2c
        0x24 -> :sswitch_17
        0x33 -> :sswitch_27
        0x35 -> :sswitch_26
        0x36 -> :sswitch_25
        0x3f -> :sswitch_29
        0x40 -> :sswitch_2a
        0x43 -> :sswitch_11
        0x46 -> :sswitch_10
        0xbb8 -> :sswitch_19
        0xbb9 -> :sswitch_1a
        0xbbb -> :sswitch_23
        0xbbc -> :sswitch_1b
        0xbbf -> :sswitch_1c
        0xbc0 -> :sswitch_1d
        0xbc1 -> :sswitch_1e
        0xbc2 -> :sswitch_24
        0xbc9 -> :sswitch_21
        0xbcd -> :sswitch_1f
        0xbce -> :sswitch_18
        0xbd6 -> :sswitch_22
        0xbd7 -> :sswitch_0
        0xbdb -> :sswitch_2b
        0xbde -> :sswitch_12
        0xbdf -> :sswitch_20
    .end sparse-switch
.end method

.method private merge([Z)V
    .locals 4
    .parameter "array"

    .prologue
    .line 1561
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x3b

    if-ge v0, v1, :cond_0

    .line 1562
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v2, v2, v0

    aget-boolean v3, p1, v0

    or-int/2addr v2, v3

    aput-boolean v2, v1, v0

    .line 1561
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1564
    :cond_0
    return-void
.end method

.method private restitutePreFlashStatus(Lcom/sec/android/app/camera/CameraSettings;)V
    .locals 2
    .parameter "css"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckShootingModeSet:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 125
    iget v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreFlashValueForShootingMode:I

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckShootingModeSet:Z

    .line 130
    :cond_0
    return-void
.end method

.method private savePreFlashStatus(Lcom/sec/android/app/camera/CameraSettings;)V
    .locals 1
    .parameter "css"

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckShootingModeSet:Z

    if-nez v0, :cond_0

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckShootingModeSet:Z

    .line 117
    invoke-virtual {p1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFlashMode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreFlashValueForShootingMode:I

    .line 121
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addButton(Lcom/sec/android/app/camera/glwidget/TwGLItem;)V
    .locals 1
    .parameter "button"

    .prologue
    .line 682
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    monitor-exit p0

    return-void

    .line 682
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 669
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 670
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    monitor-exit p0

    return-void

    .line 669
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDimArray([Z)V
    .locals 3
    .parameter "dimArray"

    .prologue
    const/4 v2, 0x0

    .line 674
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    const/16 v1, 0x3b

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 675
    return-void
.end method

.method public getIsFlashDimmed()Z
    .locals 1

    .prologue
    .line 1542
    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mIsFlashDimmed:Z

    return v0
.end method

.method public getLowBatteryStatus()Z
    .locals 1

    .prologue
    .line 1534
    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mLowBattery:Z

    return v0
.end method

.method public processDim()V
    .locals 4

    .prologue
    .line 1546
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x3b

    if-ge v0, v2, :cond_0

    .line 1547
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/camera/MenuDimController;->setDim(IZ)V

    .line 1546
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1550
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v3

    .line 1551
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1552
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/MenuDimController$DimArray;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1553
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getArray()[Z

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/MenuDimController;->merge([Z)V

    goto :goto_1

    .line 1555
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/MenuDimController$DimArray;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/MenuDimController$DimArray;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1557
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 1558
    return-void
.end method

.method public declared-synchronized refreshButtonDim(II)V
    .locals 8
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    const/4 v7, 0x1

    .line 877
    monitor-enter p0

    :try_start_0
    const-string v4, "MenuDimController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshButtonDim: menuid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " modeid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    .line 883
    .local v0, cs:Lcom/sec/android/app/camera/CameraSettings;
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    .line 885
    .local v1, dimArray:Lcom/sec/android/app/camera/MenuDimController$DimArray;
    if-eqz v1, :cond_0

    .line 886
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->restoreUserSettingValues(Z)V

    .line 887
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getMenuId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    const-string v4, "MenuDimController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoring user setting values. CameraResolutionChanged = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolutionChanged()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " CamcorderResolutionChanged = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolutionChanged()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_0
    new-instance v1, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    .end local v1           #dimArray:Lcom/sec/android/app/camera/MenuDimController$DimArray;
    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/MenuDimController$DimArray;-><init>(Lcom/sec/android/app/camera/MenuDimController;I)V

    .line 893
    .restart local v1       #dimArray:Lcom/sec/android/app/camera/MenuDimController$DimArray;
    sparse-switch p1, :sswitch_data_0

    .line 1500
    :cond_1
    :goto_0
    :sswitch_0
    iget-boolean v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mLowBattery:Z

    if-eqz v4, :cond_2

    .line 1501
    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1502
    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1503
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 1504
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderFlashMode(I)V

    .line 1507
    :cond_2
    iget-boolean v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mIsFlashDimmed:Z

    if-eqz v4, :cond_3

    .line 1508
    const-string v4, "MenuDimController"

    const-string v5, "set flash dim by external"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_2

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1510
    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_3

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1511
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 1512
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderFlashMode(I)V

    .line 1515
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getAttachEmailMode()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1516
    :cond_4
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x1b

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1517
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x1b

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1520
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1522
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuDimController;->processDim()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1523
    monitor-exit p0

    return-void

    .line 895
    :sswitch_1
    :try_start_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 896
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x28

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 897
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x28

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 898
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setSelfFlip(I)V

    .line 900
    :cond_6
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 1124
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/MenuDimController;->restitutePreFlashStatus(Lcom/sec/android/app/camera/CameraSettings;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 877
    .end local v0           #cs:Lcom/sec/android/app/camera/CameraSettings;
    .end local v1           #dimArray:Lcom/sec/android/app/camera/MenuDimController$DimArray;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 902
    .restart local v0       #cs:Lcom/sec/android/app/camera/CameraSettings;
    .restart local v1       #dimArray:Lcom/sec/android/app/camera/MenuDimController$DimArray;
    :pswitch_2
    const/4 v4, 0x6

    :try_start_2
    new-array v4, v4, [I

    fill-array-data v4, :array_4

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 903
    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 904
    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_6

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 907
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 908
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 911
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/MenuDimController;->savePreFlashStatus(Lcom/sec/android/app/camera/CameraSettings;)V

    .line 918
    const/16 v4, 0xd

    new-array v4, v4, [I

    fill-array-data v4, :array_7

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 920
    const/16 v4, 0xd

    new-array v4, v4, [I

    fill-array-data v4, :array_8

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 923
    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_9

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 927
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 928
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 929
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    .line 930
    const/16 v4, 0x11

    if-ne p2, v4, :cond_7

    .line 934
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_0

    .line 936
    :cond_7
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_0

    .line 939
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/MenuDimController;->savePreFlashStatus(Lcom/sec/android/app/camera/CameraSettings;)V

    .line 940
    const/16 v4, 0xe

    new-array v4, v4, [I

    fill-array-data v4, :array_a

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 942
    const/16 v4, 0xe

    new-array v4, v4, [I

    fill-array-data v4, :array_b

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 944
    const/16 v4, 0x8

    new-array v4, v4, [I

    fill-array-data v4, :array_c

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 945
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 946
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 949
    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 950
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    .line 951
    const/16 v4, 0x11

    if-ne p2, v4, :cond_9

    .line 955
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_0

    .line 948
    :cond_8
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_1

    .line 957
    :cond_9
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_0

    .line 960
    :pswitch_5
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/MenuDimController;->savePreFlashStatus(Lcom/sec/android/app/camera/CameraSettings;)V

    .line 961
    const/16 v4, 0xd

    new-array v4, v4, [I

    fill-array-data v4, :array_d

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 963
    const/16 v4, 0xd

    new-array v4, v4, [I

    fill-array-data v4, :array_e

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 965
    const/16 v4, 0x8

    new-array v4, v4, [I

    fill-array-data v4, :array_f

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 966
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 967
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 970
    :goto_2
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 972
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_0

    .line 969
    :cond_a
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_2

    .line 975
    :pswitch_6
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/MenuDimController;->savePreFlashStatus(Lcom/sec/android/app/camera/CameraSettings;)V

    .line 976
    const/16 v4, 0xc

    new-array v4, v4, [I

    fill-array-data v4, :array_10

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 978
    const/16 v4, 0xc

    new-array v4, v4, [I

    fill-array-data v4, :array_11

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 980
    const/16 v4, 0x9

    new-array v4, v4, [I

    fill-array-data v4, :array_12

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 982
    const-string v4, "640x480"

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    .line 986
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 987
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    goto/16 :goto_0

    .line 990
    :pswitch_7
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/MenuDimController;->savePreFlashStatus(Lcom/sec/android/app/camera/CameraSettings;)V

    .line 991
    const/16 v4, 0x9

    new-array v4, v4, [I

    fill-array-data v4, :array_13

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 993
    const/16 v4, 0x9

    new-array v4, v4, [I

    fill-array-data v4, :array_14

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 995
    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_15

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 997
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 998
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1001
    :goto_3
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAutoContrast(I)V

    goto/16 :goto_0

    .line 1000
    :cond_b
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_3

    .line 1004
    :pswitch_8
    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_16

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1005
    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_17

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1006
    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_18

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1007
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1008
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1011
    :goto_4
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/MenuDimController;->restitutePreFlashStatus(Lcom/sec/android/app/camera/CameraSettings;)V

    goto/16 :goto_0

    .line 1010
    :cond_c
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_4

    .line 1014
    :pswitch_9
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/MenuDimController;->savePreFlashStatus(Lcom/sec/android/app/camera/CameraSettings;)V

    .line 1015
    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_19

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1017
    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_1a

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1019
    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_1b

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1020
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1021
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1023
    :cond_d
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1026
    :pswitch_a
    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_1c

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1027
    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_1d

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1028
    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_1e

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 1031
    :pswitch_b
    const/16 v4, 0xb

    new-array v4, v4, [I

    fill-array-data v4, :array_1f

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1033
    const/16 v4, 0xb

    new-array v4, v4, [I

    fill-array-data v4, :array_20

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1035
    const/16 v4, 0x9

    new-array v4, v4, [I

    fill-array-data v4, :array_21

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1040
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1043
    :pswitch_c
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/MenuDimController;->savePreFlashStatus(Lcom/sec/android/app/camera/CameraSettings;)V

    .line 1044
    const/16 v4, 0x8

    new-array v4, v4, [I

    fill-array-data v4, :array_22

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1046
    const/16 v4, 0x8

    new-array v4, v4, [I

    fill-array-data v4, :array_23

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1048
    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_24

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1050
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1051
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1053
    :cond_e
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1056
    :pswitch_d
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_25

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1058
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_26

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1060
    const/16 v4, 0x8

    new-array v4, v4, [I

    fill-array-data v4, :array_27

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1062
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1065
    :pswitch_e
    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_28

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1067
    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_29

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1069
    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_2a

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1073
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1076
    :pswitch_f
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/MenuDimController;->savePreFlashStatus(Lcom/sec/android/app/camera/CameraSettings;)V

    .line 1085
    const/16 v4, 0xb

    new-array v4, v4, [I

    fill-array-data v4, :array_2b

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1088
    const/16 v4, 0xb

    new-array v4, v4, [I

    fill-array-data v4, :array_2c

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1092
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_2d

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1097
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1100
    :pswitch_10
    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_2e

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1101
    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_2f

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1102
    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_30

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1103
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/MenuDimController;->restitutePreFlashStatus(Lcom/sec/android/app/camera/CameraSettings;)V

    goto/16 :goto_0

    .line 1106
    :pswitch_11
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/MenuDimController;->savePreFlashStatus(Lcom/sec/android/app/camera/CameraSettings;)V

    .line 1111
    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_31

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1112
    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_32

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1114
    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_33

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1115
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1118
    :pswitch_12
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x31

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1119
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x31

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1120
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x31

    aput v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1121
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/MenuDimController;->restitutePreFlashStatus(Lcom/sec/android/app/camera/CameraSettings;)V

    goto/16 :goto_0

    .line 1131
    :sswitch_2
    if-eqz p2, :cond_10

    .line 1132
    iget-boolean v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    if-nez v4, :cond_f

    .line 1133
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    .line 1134
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFlashMode()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousFlashValue:I

    .line 1135
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraExposureMeter()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousMeteringValue:I

    .line 1137
    :cond_f
    packed-switch p2, :pswitch_data_1

    .line 1245
    :goto_5
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAntiShake(I)V

    .line 1246
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAutoContrast(I)V

    goto/16 :goto_0

    .line 1139
    :pswitch_13
    const/16 v4, 0x9

    new-array v4, v4, [I

    fill-array-data v4, :array_34

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1140
    const/16 v4, 0x9

    new-array v4, v4, [I

    fill-array-data v4, :array_35

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1141
    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_36

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1143
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1148
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto :goto_5

    .line 1151
    :pswitch_14
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_37

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1152
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_38

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1153
    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_39

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1154
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    .line 1155
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto :goto_5

    .line 1158
    :pswitch_15
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_3a

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1159
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_3b

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1160
    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_3c

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1162
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto :goto_5

    .line 1165
    :pswitch_16
    const/16 v4, 0x9

    new-array v4, v4, [I

    fill-array-data v4, :array_3d

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1166
    const/16 v4, 0x9

    new-array v4, v4, [I

    fill-array-data v4, :array_3e

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1167
    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_3f

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1169
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraISO(I)V

    .line 1170
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_5

    .line 1173
    :pswitch_17
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_40

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1174
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_41

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1175
    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_42

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1177
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraISO(I)V

    .line 1178
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureValue(I)V

    .line 1179
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_5

    .line 1182
    :pswitch_18
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_43

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1183
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_44

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1184
    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_45

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1185
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 1186
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_5

    .line 1189
    :pswitch_19
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_46

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1190
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_47

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1191
    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_48

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1192
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 1193
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_5

    .line 1196
    :pswitch_1a
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_49

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1197
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_4a

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1198
    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_4b

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1199
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_5

    .line 1202
    :pswitch_1b
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_4c

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1203
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_4d

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1204
    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_4e

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1206
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_5

    .line 1209
    :pswitch_1c
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_4f

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1210
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_50

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1211
    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_51

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1213
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraISO(I)V

    .line 1214
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_5

    .line 1217
    :pswitch_1d
    const/16 v4, 0x9

    new-array v4, v4, [I

    fill-array-data v4, :array_52

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1218
    const/16 v4, 0x9

    new-array v4, v4, [I

    fill-array-data v4, :array_53

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1219
    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_54

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1223
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1224
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_5

    .line 1227
    :pswitch_1e
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_55

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1228
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_56

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1229
    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_57

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1230
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 1231
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_5

    .line 1234
    :pswitch_1f
    const/16 v4, 0x9

    new-array v4, v4, [I

    fill-array-data v4, :array_58

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1235
    const/16 v4, 0x9

    new-array v4, v4, [I

    fill-array-data v4, :array_59

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1236
    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_5a

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1238
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_5

    .line 1249
    :cond_10
    iget-boolean v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    if-eqz v4, :cond_1

    .line 1250
    iget v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousFlashValue:I

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 1251
    iget v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousMeteringValue:I

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    .line 1252
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    goto/16 :goto_0

    .line 1266
    :sswitch_3
    if-eqz p2, :cond_1

    .line 1267
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x2

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1268
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x2

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1269
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAntiShake(I)V

    goto/16 :goto_0

    .line 1282
    :sswitch_4
    if-ne p2, v7, :cond_1

    .line 1283
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x10

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1284
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x10

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1285
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x10

    aput v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 1289
    :sswitch_5
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1290
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x28

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1291
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x28

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1292
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setSelfFlip(I)V

    .line 1294
    :cond_11
    if-ne p2, v7, :cond_15

    .line 1295
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x2c

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1296
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x2c

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1297
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x2c

    aput v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1298
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1299
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x1e

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1300
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x1e

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1302
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 1303
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    .line 1307
    .local v3, resolutionId:I
    :goto_6
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_0

    .line 1305
    .end local v3           #resolutionId:I
    :cond_12
    const/16 v3, 0x13

    .restart local v3       #resolutionId:I
    goto :goto_6

    .line 1309
    .end local v3           #resolutionId:I
    :cond_13
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x1e

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1310
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x1e

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1312
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 1313
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    .line 1317
    .restart local v3       #resolutionId:I
    :goto_7
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_0

    .line 1315
    .end local v3           #resolutionId:I
    :cond_14
    const/16 v3, 0x13

    .restart local v3       #resolutionId:I
    goto :goto_7

    .line 1319
    .end local v3           #resolutionId:I
    :cond_15
    if-nez p2, :cond_1

    .line 1320
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1321
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1322
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x1e

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1323
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x1e

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1324
    const/16 v4, 0x13

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_0

    .line 1327
    :cond_16
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1328
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x1e

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1329
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x1e

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1330
    const/16 v4, 0x13

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_0

    .line 1359
    :sswitch_6
    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1360
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x16

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1361
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x16

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    .line 1365
    :sswitch_7
    if-ne p2, v7, :cond_19

    .line 1366
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v4

    if-nez v4, :cond_17

    .line 1367
    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_5b

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1368
    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_5c

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1369
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x31

    aput v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 1371
    :cond_17
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1372
    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_5d

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1373
    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_5e

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1374
    const/16 v4, 0x13

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_0

    .line 1376
    :cond_18
    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_5f

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1377
    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_60

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    .line 1380
    :cond_19
    const/4 v4, 0x2

    if-ne p2, v4, :cond_1a

    .line 1381
    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_61

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1383
    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_62

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1385
    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_63

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1387
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x1a

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    goto/16 :goto_0

    .line 1389
    :cond_1a
    const/4 v4, 0x3

    if-ne p2, v4, :cond_1b

    .line 1390
    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_64

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1391
    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_65

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1392
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x1b

    aput v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 1394
    :cond_1b
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x1c

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1395
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x1c

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    .line 1399
    :sswitch_8
    if-nez p2, :cond_1

    .line 1400
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x18

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1401
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x18

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    .line 1405
    :sswitch_9
    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1406
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x23

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1407
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x23

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    .line 1411
    :sswitch_a
    const/16 v4, 0xd

    if-ne p2, v4, :cond_1c

    .line 1412
    const/16 v4, 0x70

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderZoomValue()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    .line 1413
    #getter for: Lcom/sec/android/app/camera/MenuDimController$DimArray;->mDimArray:[Z
    invoke-static {v1}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->access$500(Lcom/sec/android/app/camera/MenuDimController$DimArray;)[Z

    move-result-object v4

    const/16 v5, 0x27

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 1414
    #getter for: Lcom/sec/android/app/camera/MenuDimController$DimArray;->mChangeArray:[Z
    invoke-static {v1}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->access$600(Lcom/sec/android/app/camera/MenuDimController$DimArray;)[Z

    move-result-object v4

    const/16 v5, 0x27

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 1415
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x27

    aput v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1417
    :cond_1c
    const/16 v4, 0xd

    if-eq p2, v4, :cond_1

    const/16 v4, 0xe

    if-eq p2, v4, :cond_1

    .line 1418
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x2c

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1419
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x2c

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1420
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x2c

    aput v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 1424
    :sswitch_b
    if-nez p2, :cond_1d

    .line 1425
    const/16 v4, 0x29

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->set(IZ)V

    goto/16 :goto_0

    .line 1427
    :cond_1d
    const/16 v4, 0x29

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->set(IZ)V

    goto/16 :goto_0

    .line 1431
    :sswitch_c
    if-ne p2, v7, :cond_1

    .line 1443
    const/16 v4, 0xb

    new-array v4, v4, [I

    fill-array-data v4, :array_66

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1447
    const/16 v4, 0x8

    new-array v4, v4, [I

    fill-array-data v4, :array_67

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 1452
    :sswitch_d
    if-ne p2, v7, :cond_1

    .line 1459
    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_68

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1460
    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_69

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1463
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x1b

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1464
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x1b

    aput v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 1469
    :sswitch_e
    if-ne p2, v7, :cond_1f

    .line 1470
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/MenuDimController;->savePreFlashStatus(Lcom/sec/android/app/camera/CameraSettings;)V

    .line 1471
    const/16 v4, 0x12

    new-array v4, v4, [I

    fill-array-data v4, :array_6a

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1473
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_6b

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1474
    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_6c

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1475
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1476
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1477
    :cond_1e
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 1478
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    .line 1479
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    .line 1480
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v4, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/camera/CameraEngine;->doChangeParameterSync(II)V

    .line 1481
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v4, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v4

    const/16 v5, 0x10

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/camera/CameraEngine;->doChangeParameterSync(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1483
    const-wide/16 v4, 0xc8

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1484
    :catch_0
    move-exception v2

    .line 1486
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 1489
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_1f
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/MenuDimController;->restitutePreFlashStatus(Lcom/sec/android/app/camera/CameraSettings;)V

    .line 1490
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFlashMode()I

    move-result v4

    if-eqz v4, :cond_1

    .line 1491
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v4, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFlashMode()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/camera/CameraEngine;->doChangeParameterSync(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 893
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x6 -> :sswitch_0
        0xa -> :sswitch_3
        0xd -> :sswitch_0
        0xe -> :sswitch_4
        0x16 -> :sswitch_6
        0x1d -> :sswitch_8
        0x24 -> :sswitch_c
        0x27 -> :sswitch_b
        0x2f -> :sswitch_e
        0x65 -> :sswitch_5
        0x68 -> :sswitch_a
        0x75 -> :sswitch_9
        0x79 -> :sswitch_d
    .end sparse-switch

    .line 1501
    :array_0
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
    .end array-data

    .line 1502
    :array_1
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
    .end array-data

    .line 1509
    :array_2
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
    .end array-data

    .line 1510
    :array_3
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
    .end array-data

    .line 900
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_8
        :pswitch_3
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 902
    :array_4
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 903
    :array_5
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 904
    :array_6
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 918
    :array_7
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 920
    :array_8
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 923
    :array_9
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 940
    :array_a
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 942
    :array_b
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 944
    :array_c
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 961
    :array_d
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 963
    :array_e
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 965
    :array_f
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 976
    :array_10
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 978
    :array_11
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 980
    :array_12
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 991
    :array_13
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 993
    :array_14
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 995
    :array_15
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1004
    :array_16
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1005
    :array_17
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1006
    :array_18
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1015
    :array_19
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1017
    :array_1a
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1019
    :array_1b
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1026
    :array_1c
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1027
    :array_1d
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1028
    :array_1e
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1031
    :array_1f
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1033
    :array_20
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1035
    :array_21
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1044
    :array_22
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1046
    :array_23
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1048
    :array_24
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1056
    :array_25
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1058
    :array_26
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1060
    :array_27
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1065
    :array_28
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1067
    :array_29
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1069
    :array_2a
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1085
    :array_2b
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1088
    :array_2c
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1092
    :array_2d
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    .line 1100
    :array_2e
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 1101
    :array_2f
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 1102
    :array_30
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 1111
    :array_31
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1112
    :array_32
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1114
    :array_33
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1137
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_13
        :pswitch_14
        :pswitch_1b
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
    .end packed-switch

    .line 1139
    :array_34
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1140
    :array_35
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1141
    :array_36
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 1151
    :array_37
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1152
    :array_38
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1153
    :array_39
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 1158
    :array_3a
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1159
    :array_3b
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1160
    :array_3c
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 1165
    :array_3d
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1166
    :array_3e
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1167
    :array_3f
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 1173
    :array_40
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1174
    :array_41
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1175
    :array_42
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 1182
    :array_43
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1183
    :array_44
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1184
    :array_45
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 1189
    :array_46
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1190
    :array_47
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1191
    :array_48
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 1196
    :array_49
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1197
    :array_4a
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1198
    :array_4b
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 1202
    :array_4c
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1203
    :array_4d
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1204
    :array_4e
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 1209
    :array_4f
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1210
    :array_50
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1211
    :array_51
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 1217
    :array_52
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1218
    :array_53
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1219
    :array_54
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 1227
    :array_55
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1228
    :array_56
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1229
    :array_57
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 1234
    :array_58
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1235
    :array_59
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1236
    :array_5a
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 1367
    :array_5b
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1368
    :array_5c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1372
    :array_5d
    .array-data 0x4
        0x1et 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 1373
    :array_5e
    .array-data 0x4
        0x1et 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 1376
    :array_5f
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 1377
    :array_60
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 1381
    :array_61
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 1383
    :array_62
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 1385
    :array_63
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
    .end array-data

    .line 1390
    :array_64
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 1391
    :array_65
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 1443
    :array_66
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 1447
    :array_67
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
    .end array-data

    .line 1459
    :array_68
    .array-data 0x4
        0x25t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data

    .line 1460
    :array_69
    .array-data 0x4
        0x25t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data

    .line 1471
    :array_6a
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
    .end array-data

    .line 1473
    :array_6b
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    .line 1474
    :array_6c
    .array-data 0x4
        0x14t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public declared-synchronized removeButton(Lcom/sec/android/app/camera/glwidget/TwGLItem;)V
    .locals 1
    .parameter "button"

    .prologue
    .line 686
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    monitor-exit p0

    return-void

    .line 686
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetDim()V
    .locals 2

    .prologue
    .line 841
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 842
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 844
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x3b

    if-ge v0, v1, :cond_0

    .line 845
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/MenuDimController;->setDim(IZ)V

    .line 844
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 847
    :cond_0
    return-void
.end method

.method public restoreUserSettingValues()V
    .locals 3

    .prologue
    .line 856
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 857
    .local v0, itor:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/MenuDimController$DimArray;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 858
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->restoreUserSettingValues(Z)V

    goto :goto_0

    .line 860
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 861
    return-void
.end method

.method declared-synchronized setDim(IZ)V
    .locals 1
    .parameter "key"
    .parameter "dimmed"

    .prologue
    .line 850
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aput-boolean p2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 853
    :cond_0
    monitor-exit p0

    return-void

    .line 850
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDimArray([Z)V
    .locals 3
    .parameter "dimArray"

    .prologue
    const/4 v2, 0x0

    .line 678
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    const/16 v1, 0x3b

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 679
    return-void
.end method

.method public setIsFlashDimmed(Z)V
    .locals 0
    .parameter "isflashDimmed"

    .prologue
    .line 1538
    iput-boolean p1, p0, Lcom/sec/android/app/camera/MenuDimController;->mIsFlashDimmed:Z

    .line 1539
    return-void
.end method

.method public setLowBatteryStatus(Z)V
    .locals 0
    .parameter "lowBattery"

    .prologue
    .line 1530
    iput-boolean p1, p0, Lcom/sec/android/app/camera/MenuDimController;->mLowBattery:Z

    .line 1531
    return-void
.end method

.method public setPreviousFlashValue(I)V
    .locals 0
    .parameter "previousFlashValue"

    .prologue
    .line 1526
    iput p1, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousFlashValue:I

    .line 1527
    return-void
.end method

.method public varargs setSettingDefault([I)V
    .locals 10
    .parameter "indices"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1568
    iget-object v6, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    .line 1572
    .local v1, cs:Lcom/sec/android/app/camera/CameraSettings;
    move-object v0, p1

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_4

    aget v3, v0, v2

    .line 1573
    .local v3, index:I
    packed-switch v3, :pswitch_data_0

    .line 1572
    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1575
    :pswitch_1
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setSceneMode(I)V

    goto :goto_1

    .line 1579
    :pswitch_2
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto :goto_1

    .line 1583
    :pswitch_3
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraISO(I)V

    goto :goto_1

    .line 1589
    :pswitch_4
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraFocusMode()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_1

    .line 1592
    :pswitch_5
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    goto :goto_1

    .line 1595
    :pswitch_6
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureValue(I)V

    goto :goto_1

    .line 1598
    :pswitch_7
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAutoContrast(I)V

    goto :goto_1

    .line 1601
    :pswitch_8
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    goto :goto_1

    .line 1604
    :pswitch_9
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    goto :goto_1

    .line 1607
    :pswitch_a
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setTimer(I)V

    goto :goto_1

    .line 1610
    :pswitch_b
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    goto :goto_1

    .line 1613
    :pswitch_c
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraReview(I)V

    goto :goto_1

    .line 1616
    :pswitch_d
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setVolumeKey(I)V

    goto :goto_1

    .line 1619
    :pswitch_e
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMode()Z

    move-result v6

    if-ne v6, v9, :cond_2

    .line 1620
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v6

    if-ne v6, v9, :cond_0

    .line 1621
    invoke-virtual {v1, v9}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderRecordingMode(I)V

    goto :goto_1

    .line 1622
    :cond_0
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAttachEmailMode()Z

    move-result v6

    if-ne v6, v9, :cond_1

    .line 1623
    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderRecordingMode(I)V

    goto :goto_1

    .line 1625
    :cond_1
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderRecordingMode(I)V

    goto :goto_1

    .line 1628
    :cond_2
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderRecordingMode(I)V

    goto :goto_1

    .line 1633
    :pswitch_f
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1634
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v5

    .line 1640
    .local v5, resolutionId:I
    :goto_2
    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_1

    .line 1637
    .end local v5           #resolutionId:I
    :cond_3
    const/16 v5, 0x13

    .restart local v5       #resolutionId:I
    goto :goto_2

    .line 1643
    .end local v5           #resolutionId:I
    :pswitch_10
    invoke-virtual {v1, v9}, Lcom/sec/android/app/camera/CameraSettings;->setCameraReview(I)V

    goto/16 :goto_1

    .line 1646
    :pswitch_11
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setVolumeKey(I)V

    goto/16 :goto_1

    .line 1649
    :pswitch_12
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAntiShake(I)V

    goto/16 :goto_1

    .line 1652
    :pswitch_13
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderAntishake()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    goto/16 :goto_1

    .line 1656
    :pswitch_14
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderFlashMode(I)V

    goto/16 :goto_1

    .line 1660
    :pswitch_15
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderZoomValue(I)V

    goto/16 :goto_1

    .line 1663
    :pswitch_16
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    goto/16 :goto_1

    .line 1666
    :pswitch_17
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderEffect(I)V

    goto/16 :goto_1

    .line 1669
    :pswitch_18
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setSelfFlip(I)V

    goto/16 :goto_1

    .line 1677
    :pswitch_19
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setBurstMode(I)V

    goto/16 :goto_1

    .line 1681
    :pswitch_1a
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setContextualFilename(I)V

    goto/16 :goto_1

    .line 1693
    .end local v3           #index:I
    :cond_4
    return-void

    .line 1573
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_12
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_17
        :pswitch_16
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_15
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_11
    .end packed-switch
.end method

.method public declared-synchronized synchronizeDim()V
    .locals 5

    .prologue
    .line 864
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v3, 0x3b

    if-ge v0, v3, :cond_2

    .line 865
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 866
    .local v2, item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->getkeyFromCommandId(I)I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 867
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getDim()Z

    move-result v4

    if-eq v3, v4, :cond_0

    .line 868
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setDim(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 864
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 873
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    monitor-exit p0

    return-void
.end method
