.class public Lcom/sec/android/app/camera/CheckMemory;
.super Ljava/lang/Object;
.source "CheckMemory.java"


# static fields
.field public static final CANNOT_STAT_ERROR:I = -0x2

.field public static final LOW_STORAGE_THRESHOLD:J = 0xa00000L

.field public static final NO_STORAGE_ERROR:I = -0x1

.field private static NUM_OF_QUALITIES:I = 0x0

.field private static NUM_OF_RESOLUTIONS:I = 0x0

.field private static QUALITY_INDEX:I = 0x0

.field private static RESOLUTION_INDEX:I = 0x0

.field private static SIZE_INDEX:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "CheckMemory"

.field private static mImageSizeList:[[I

.field protected static mStorageManager:Landroid/os/storage/StorageManager;

.field protected static mStorageVolumes:[Landroid/os/storage/StorageVolume;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 39
    const/16 v0, 0x4e

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [I

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [I

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [I

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [I

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [I

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [I

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [I

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [I

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [I

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [I

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v3, [I

    fill-array-data v2, :array_22

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v3, [I

    fill-array-data v2, :array_23

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v3, [I

    fill-array-data v2, :array_24

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v3, [I

    fill-array-data v2, :array_25

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v3, [I

    fill-array-data v2, :array_26

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v3, [I

    fill-array-data v2, :array_27

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v3, [I

    fill-array-data v2, :array_28

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v3, [I

    fill-array-data v2, :array_29

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v3, [I

    fill-array-data v2, :array_2a

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v3, [I

    fill-array-data v2, :array_2b

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v3, [I

    fill-array-data v2, :array_2c

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v3, [I

    fill-array-data v2, :array_2d

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v3, [I

    fill-array-data v2, :array_2e

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v3, [I

    fill-array-data v2, :array_2f

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v3, [I

    fill-array-data v2, :array_30

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v3, [I

    fill-array-data v2, :array_31

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v3, [I

    fill-array-data v2, :array_32

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v3, [I

    fill-array-data v2, :array_33

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v3, [I

    fill-array-data v2, :array_34

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v3, [I

    fill-array-data v2, :array_35

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v3, [I

    fill-array-data v2, :array_36

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v3, [I

    fill-array-data v2, :array_37

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v3, [I

    fill-array-data v2, :array_38

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v3, [I

    fill-array-data v2, :array_39

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v3, [I

    fill-array-data v2, :array_3a

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v3, [I

    fill-array-data v2, :array_3b

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v3, [I

    fill-array-data v2, :array_3c

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v3, [I

    fill-array-data v2, :array_3d

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v3, [I

    fill-array-data v2, :array_3e

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v3, [I

    fill-array-data v2, :array_3f

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v3, [I

    fill-array-data v2, :array_40

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v3, [I

    fill-array-data v2, :array_41

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v3, [I

    fill-array-data v2, :array_42

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-array v2, v3, [I

    fill-array-data v2, :array_43

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-array v2, v3, [I

    fill-array-data v2, :array_44

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-array v2, v3, [I

    fill-array-data v2, :array_45

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-array v2, v3, [I

    fill-array-data v2, :array_46

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-array v2, v3, [I

    fill-array-data v2, :array_47

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-array v2, v3, [I

    fill-array-data v2, :array_48

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-array v2, v3, [I

    fill-array-data v2, :array_49

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-array v2, v3, [I

    fill-array-data v2, :array_4a

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-array v2, v3, [I

    fill-array-data v2, :array_4b

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-array v2, v3, [I

    fill-array-data v2, :array_4c

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-array v2, v3, [I

    fill-array-data v2, :array_4d

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/CheckMemory;->mImageSizeList:[[I

    .line 120
    sput v3, Lcom/sec/android/app/camera/CheckMemory;->NUM_OF_QUALITIES:I

    .line 121
    sget-object v0, Lcom/sec/android/app/camera/CheckMemory;->mImageSizeList:[[I

    array-length v0, v0

    sget v1, Lcom/sec/android/app/camera/CheckMemory;->NUM_OF_QUALITIES:I

    div-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/CheckMemory;->NUM_OF_RESOLUTIONS:I

    .line 122
    sput v4, Lcom/sec/android/app/camera/CheckMemory;->RESOLUTION_INDEX:I

    .line 123
    sput v5, Lcom/sec/android/app/camera/CheckMemory;->QUALITY_INDEX:I

    .line 124
    sput v6, Lcom/sec/android/app/camera/CheckMemory;->SIZE_INDEX:I

    return-void

    .line 39
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0xat 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x20t 0x8t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x40t 0x6t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x20t 0x8t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x9at 0x6t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x14t 0x5t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x1et 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x18t 0x8t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x1et 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x93t 0x6t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x1et 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xft 0x5t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc0t 0x8t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1ct 0x7t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x78t 0x5t 0x0t 0x0t
    .end array-data

    :array_c
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x20t 0x7t 0x0t 0x0t
    .end array-data

    :array_d
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xcat 0x5t 0x0t 0x0t
    .end array-data

    :array_e
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x74t 0x4t 0x0t 0x0t
    .end array-data

    :array_f
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x68t 0x6t 0x0t 0x0t
    .end array-data

    :array_10
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3ct 0x5t 0x0t 0x0t
    .end array-data

    :array_11
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x4t 0x0t 0x0t
    .end array-data

    :array_12
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x40t 0x6t 0x0t 0x0t
    .end array-data

    :array_13
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x14t 0x5t 0x0t 0x0t
    .end array-data

    :array_14
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t
    .end array-data

    :array_15
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb0t 0x4t 0x0t 0x0t
    .end array-data

    :array_16
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x84t 0x3t 0x0t 0x0t
    .end array-data

    :array_17
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t
    .end array-data

    :array_18
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x9at 0x3t 0x0t 0x0t
    .end array-data

    :array_19
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x66t 0x2t 0x0t 0x0t
    .end array-data

    :array_1a
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xcdt 0x1t 0x0t 0x0t
    .end array-data

    :array_1b
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x20t 0x3t 0x0t 0x0t
    .end array-data

    :array_1c
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x8at 0x2t 0x0t 0x0t
    .end array-data

    :array_1d
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x26t 0x2t 0x0t 0x0t
    .end array-data

    :array_1e
    .array-data 0x4
        0x17t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xect 0x2t 0x0t 0x0t
    .end array-data

    :array_1f
    .array-data 0x4
        0x17t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x5ft 0x2t 0x0t 0x0t
    .end array-data

    :array_20
    .array-data 0x4
        0x17t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x2t 0x0t 0x0t
    .end array-data

    :array_21
    .array-data 0x4
        0x1at 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xect 0x2t 0x0t 0x0t
    .end array-data

    :array_22
    .array-data 0x4
        0x1at 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x5ft 0x2t 0x0t 0x0t
    .end array-data

    :array_23
    .array-data 0x4
        0x1at 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x2t 0x0t 0x0t
    .end array-data

    :array_24
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t
    .end array-data

    :array_25
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
    .end array-data

    :array_26
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data

    :array_27
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x58t 0x2t 0x0t 0x0t
    .end array-data

    :array_28
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t
    .end array-data

    :array_29
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
    .end array-data

    :array_2a
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t
    .end array-data

    :array_2b
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
    .end array-data

    :array_2c
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data

    :array_2d
    .array-data 0x4
        0x1ct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t
    .end array-data

    :array_2e
    .array-data 0x4
        0x1ct 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
    .end array-data

    :array_2f
    .array-data 0x4
        0x1ct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data

    :array_30
    .array-data 0x4
        0x18t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x58t 0x2t 0x0t 0x0t
    .end array-data

    :array_31
    .array-data 0x4
        0x18t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t
    .end array-data

    :array_32
    .array-data 0x4
        0x18t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
    .end array-data

    :array_33
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x68t 0x1t 0x0t 0x0t
    .end array-data

    :array_34
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
    .end array-data

    :array_35
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x81t 0x0t 0x0t 0x0t
    .end array-data

    :array_36
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x82t 0x0t 0x0t 0x0t
    .end array-data

    :array_37
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
    .end array-data

    :array_38
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
    .end array-data

    :array_39
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
    .end array-data

    :array_3a
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
    .end array-data

    :array_3b
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
    .end array-data

    :array_3c
    .array-data 0x4
        0x10t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
    .end array-data

    :array_3d
    .array-data 0x4
        0x10t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data

    :array_3e
    .array-data 0x4
        0x10t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
    .end array-data

    :array_3f
    .array-data 0x4
        0x12t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data

    :array_40
    .array-data 0x4
        0x12t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
    .end array-data

    :array_41
    .array-data 0x4
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
    .end array-data

    :array_42
    .array-data 0x4
        0x14t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x20t 0x8t 0x0t 0x0t
    .end array-data

    :array_43
    .array-data 0x4
        0x14t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x9at 0x6t 0x0t 0x0t
    .end array-data

    :array_44
    .array-data 0x4
        0x14t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x14t 0x5t 0x0t 0x0t
    .end array-data

    :array_45
    .array-data 0x4
        0x15t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb0t 0x4t 0x0t 0x0t
    .end array-data

    :array_46
    .array-data 0x4
        0x15t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x84t 0x3t 0x0t 0x0t
    .end array-data

    :array_47
    .array-data 0x4
        0x15t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t
    .end array-data

    :array_48
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x82t 0x0t 0x0t 0x0t
    .end array-data

    :array_49
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
    .end array-data

    :array_4a
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
    .end array-data

    :array_4b
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x82t 0x0t 0x0t 0x0t
    .end array-data

    :array_4c
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
    .end array-data

    :array_4d
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAvailableStorage(I)J
    .locals 7
    .parameter "storage"

    .prologue
    const/4 v3, 0x1

    .line 166
    const/4 v2, 0x0

    .line 167
    .local v2, storageDirectory:Ljava/lang/String;
    if-ne p0, v3, :cond_1

    .line 168
    :try_start_0
    sget-object v3, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    array-length v3, v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 169
    sget-object v3, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 176
    :goto_0
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 179
    .local v1, stat:Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    mul-long/2addr v3, v5

    const-wide/32 v5, 0xa00000

    sub-long/2addr v3, v5

    .line 185
    .end local v1           #stat:Landroid/os/StatFs;
    :goto_1
    return-wide v3

    .line 171
    :cond_0
    sget-object v3, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 174
    :cond_1
    sget-object v3, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 184
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v3, "CheckMemory"

    const-string v4, "cannot stat the filesystem then we don\'t know how many free bytes exist"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-wide/16 v3, -0x2

    goto :goto_1
.end method

.method public static getExternalSDStoragePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 249
    sget-object v0, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    array-length v0, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 250
    sget-object v0, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 252
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getExternalStoragePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 245
    sget-object v0, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMaxSizeOfImage(II)J
    .locals 6
    .parameter "resolution"
    .parameter "quality"

    .prologue
    .line 221
    const-wide/16 v2, 0x0

    .line 223
    .local v2, nMaxSize:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v4, Lcom/sec/android/app/camera/CheckMemory;->NUM_OF_RESOLUTIONS:I

    if-ge v0, v4, :cond_2

    .line 224
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    sget v4, Lcom/sec/android/app/camera/CheckMemory;->NUM_OF_QUALITIES:I

    if-ge v1, v4, :cond_0

    .line 225
    sget-object v4, Lcom/sec/android/app/camera/CheckMemory;->mImageSizeList:[[I

    sget v5, Lcom/sec/android/app/camera/CheckMemory;->NUM_OF_QUALITIES:I

    mul-int/2addr v5, v0

    add-int/2addr v5, v1

    aget-object v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/CheckMemory;->RESOLUTION_INDEX:I

    aget v4, v4, v5

    if-ne v4, p0, :cond_1

    sget-object v4, Lcom/sec/android/app/camera/CheckMemory;->mImageSizeList:[[I

    sget v5, Lcom/sec/android/app/camera/CheckMemory;->NUM_OF_QUALITIES:I

    mul-int/2addr v5, v0

    add-int/2addr v5, v1

    aget-object v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/CheckMemory;->QUALITY_INDEX:I

    aget v4, v4, v5

    if-ne v4, p1, :cond_1

    .line 227
    sget-object v4, Lcom/sec/android/app/camera/CheckMemory;->mImageSizeList:[[I

    sget v5, Lcom/sec/android/app/camera/CheckMemory;->NUM_OF_QUALITIES:I

    mul-int/2addr v5, v0

    add-int/2addr v5, v1

    aget-object v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/CheckMemory;->SIZE_INDEX:I

    aget v4, v4, v5

    int-to-long v2, v4

    .line 223
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 236
    .end local v1           #j:I
    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_3

    .line 237
    const-string v4, "CheckMemory"

    const-string v5, "Resolution or Quality setting maybe wrong"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-wide/32 v4, 0x100000

    .line 240
    :goto_2
    return-wide v4

    :cond_3
    const-wide/16 v4, 0x400

    mul-long/2addr v4, v2

    goto :goto_2
.end method

.method public static getRemainCount(III)I
    .locals 7
    .parameter "storage"
    .parameter "resolution"
    .parameter "quality"

    .prologue
    const/4 v4, -0x1

    .line 135
    invoke-static {p0}, Lcom/sec/android/app/camera/CheckMemory;->getAvailableStorage(I)J

    move-result-wide v1

    .line 137
    .local v1, lAvailableStorage:J
    const-wide/16 v5, -0x2

    cmp-long v5, v1, v5

    if-eqz v5, :cond_0

    .line 138
    const/4 v3, 0x0

    .line 140
    .local v3, nRemainCount:I
    :try_start_0
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/CheckMemory;->getMaxSizeOfImage(II)J

    move-result-wide v5

    div-long v4, v1, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v3, v4

    .line 146
    .end local v3           #nRemainCount:I
    :goto_0
    return v3

    .line 142
    .restart local v3       #nRemainCount:I
    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/Exception;
    move v3, v4

    .line 143
    goto :goto_0

    .end local v0           #ex:Ljava/lang/Exception;
    .end local v3           #nRemainCount:I
    :cond_0
    move v3, v4

    .line 146
    goto :goto_0
.end method

.method public static getRemainTime(II)I
    .locals 7
    .parameter "storage"
    .parameter "bitrate"

    .prologue
    const/4 v4, -0x1

    .line 150
    invoke-static {p0}, Lcom/sec/android/app/camera/CheckMemory;->getAvailableStorage(I)J

    move-result-wide v1

    .line 152
    .local v1, lAvailableStorage:J
    const-wide/16 v5, -0x2

    cmp-long v5, v1, v5

    if-eqz v5, :cond_0

    .line 153
    const/4 v3, 0x0

    .line 155
    .local v3, nRemainTime:I
    int-to-long v5, p1

    :try_start_0
    div-long v4, v1, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v3, v4

    .line 161
    .end local v3           #nRemainTime:I
    :goto_0
    return v3

    .line 157
    .restart local v3       #nRemainTime:I
    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/Exception;
    move v3, v4

    .line 158
    goto :goto_0

    .end local v0           #ex:Ljava/lang/Exception;
    .end local v3           #nRemainTime:I
    :cond_0
    move v3, v4

    .line 161
    goto :goto_0
.end method

.method public static getTotalStorage(I)J
    .locals 7
    .parameter "storage"

    .prologue
    const/4 v3, 0x1

    .line 191
    const/4 v2, 0x0

    .line 192
    .local v2, storageDirectory:Ljava/lang/String;
    if-ne p0, v3, :cond_1

    .line 193
    :try_start_0
    sget-object v3, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    array-length v3, v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 194
    sget-object v3, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 202
    :goto_0
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 203
    .local v1, stat:Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    mul-long/2addr v3, v5

    const-wide/32 v5, 0xa00000

    sub-long/2addr v3, v5

    .line 209
    .end local v1           #stat:Landroid/os/StatFs;
    :goto_1
    return-wide v3

    .line 196
    :cond_0
    sget-object v3, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 199
    :cond_1
    sget-object v3, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 208
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v3, "CheckMemory"

    const-string v4, "cannot stat the filesystem then we don\'t know how many free bytes exist"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-wide/16 v3, -0x2

    goto :goto_1
.end method

.method public static isStorageMounted()Z
    .locals 3

    .prologue
    .line 214
    sget-object v0, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    array-length v0, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 215
    sget-object v0, Lcom/sec/android/app/camera/CheckMemory;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v1, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 217
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/CheckMemory;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v1, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static setStorageVolume(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .locals 3
    .parameter "activityContext"

    .prologue
    .line 127
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    sput-object v0, Lcom/sec/android/app/camera/CheckMemory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 128
    sget-object v0, Lcom/sec/android/app/camera/CheckMemory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    .line 129
    sget-object v0, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 130
    const-string v0, "CheckMemory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: INTERNAL_SD is not available. mStorageVolumes.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    return-void
.end method
