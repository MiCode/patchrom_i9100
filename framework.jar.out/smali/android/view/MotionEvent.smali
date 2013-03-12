.class public final Landroid/view/MotionEvent;
.super Landroid/view/InputEvent;
.source "MotionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/MotionEvent$PointerProperties;,
        Landroid/view/MotionEvent$PointerCoords;
    }
.end annotation


# static fields
.field public static final ACTION_CANCEL:I = 0x3

.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_HOVER_ENTER:I = 0x9

.field public static final ACTION_HOVER_EXIT:I = 0xa

.field public static final ACTION_HOVER_MOVE:I = 0x7

.field public static final ACTION_MASK:I = 0xff

.field public static final ACTION_MOVE:I = 0x2

.field public static final ACTION_OUTSIDE:I = 0x4

.field public static final ACTION_POINTER_1_DOWN:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_1_UP:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_2_DOWN:I = 0x105
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_2_UP:I = 0x106
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_3_DOWN:I = 0x205
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_3_UP:I = 0x206
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_DOWN:I = 0x5

.field public static final ACTION_POINTER_ID_MASK:I = 0xff00
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_ID_SHIFT:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_INDEX_MASK:I = 0xff00

.field public static final ACTION_POINTER_INDEX_SHIFT:I = 0x8

.field public static final ACTION_POINTER_UP:I = 0x6

.field public static final ACTION_SCROLL:I = 0x8

.field public static final ACTION_UP:I = 0x1

.field public static final AXIS_ANGLE:I = 0x33

.field public static final AXIS_BRAKE:I = 0x17

.field public static final AXIS_DISTANCE:I = 0x18

.field public static final AXIS_ECCEN:I = 0x35

.field public static final AXIS_GAS:I = 0x16

.field public static final AXIS_GENERIC_1:I = 0x20

.field public static final AXIS_GENERIC_10:I = 0x29

.field public static final AXIS_GENERIC_11:I = 0x2a

.field public static final AXIS_GENERIC_12:I = 0x2b

.field public static final AXIS_GENERIC_13:I = 0x2c

.field public static final AXIS_GENERIC_14:I = 0x2d

.field public static final AXIS_GENERIC_15:I = 0x2e

.field public static final AXIS_GENERIC_16:I = 0x2f

.field public static final AXIS_GENERIC_2:I = 0x21

.field public static final AXIS_GENERIC_3:I = 0x22

.field public static final AXIS_GENERIC_4:I = 0x23

.field public static final AXIS_GENERIC_5:I = 0x24

.field public static final AXIS_GENERIC_6:I = 0x25

.field public static final AXIS_GENERIC_7:I = 0x26

.field public static final AXIS_GENERIC_8:I = 0x27

.field public static final AXIS_GENERIC_9:I = 0x28

.field public static final AXIS_HAT_X:I = 0xf

.field public static final AXIS_HAT_Y:I = 0x10

.field public static final AXIS_HSCROLL:I = 0xa

.field public static final AXIS_LTRIGGER:I = 0x11

.field public static final AXIS_ORIENTATION:I = 0x8

.field public static final AXIS_PALM:I = 0x34

.field public static final AXIS_PRESSURE:I = 0x2

.field public static final AXIS_RTRIGGER:I = 0x12

.field public static final AXIS_RUDDER:I = 0x14

.field public static final AXIS_RX:I = 0xc

.field public static final AXIS_RY:I = 0xd

.field public static final AXIS_RZ:I = 0xe

.field public static final AXIS_SIZE:I = 0x3

.field public static final AXIS_SUMSIZE:I = 0x36

.field public static final AXIS_SURFACE_MAJOR:I = 0x31

.field public static final AXIS_SURFACE_MINOR:I = 0x32

.field public static final AXIS_SURFACE_SIZE:I = 0x30

.field private static final AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final AXIS_THROTTLE:I = 0x13

.field public static final AXIS_TILT:I = 0x19

.field public static final AXIS_TOOL_MAJOR:I = 0x6

.field public static final AXIS_TOOL_MINOR:I = 0x7

.field public static final AXIS_TOUCH_MAJOR:I = 0x4

.field public static final AXIS_TOUCH_MINOR:I = 0x5

.field public static final AXIS_VSCROLL:I = 0x9

.field public static final AXIS_WHEEL:I = 0x15

.field public static final AXIS_X:I = 0x0

.field public static final AXIS_Y:I = 0x1

.field public static final AXIS_Z:I = 0xb

.field public static final BUTTON_BACK:I = 0x8

.field public static final BUTTON_FORWARD:I = 0x10

.field public static final BUTTON_PRIMARY:I = 0x1

.field public static final BUTTON_SECONDARY:I = 0x2

.field private static final BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String; = null

.field public static final BUTTON_TERTIARY:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final EDGE_BOTTOM:I = 0x2

.field public static final EDGE_LEFT:I = 0x4

.field public static final EDGE_RIGHT:I = 0x8

.field public static final EDGE_TOP:I = 0x1

.field public static final FLAG_TAINTED:I = -0x80000000

.field public static final FLAG_WINDOW_IS_OBSCURED:I = 0x1

.field private static final HISTORY_CURRENT:I = -0x80000000

.field public static final HW_REVISION_VALUE:I = 0x5

.field public static final INVALID_POINTER_ID:I = -0x1

.field private static final MAX_RECYCLED:I = 0xa

.field private static final NS_PER_MS:J = 0xf4240L

.field public static final TOOL_TYPE_ERASER:I = 0x4

.field public static final TOOL_TYPE_FINGER:I = 0x1

.field public static final TOOL_TYPE_MOUSE:I = 0x3

.field public static final TOOL_TYPE_STYLUS:I = 0x2

.field private static final TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOOL_TYPE_UNKNOWN:I

.field private static final gRecyclerLock:Ljava/lang/Object;

.field private static gRecyclerTop:Landroid/view/MotionEvent;

.field private static gRecyclerUsed:I

.field private static final gSharedTempLock:Ljava/lang/Object;

.field private static gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private static gSharedTempPointerIndexMap:[I

.field private static gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;


# instance fields
.field private mNativePtr:I

.field private mNext:Landroid/view/MotionEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1118
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Landroid/view/MotionEvent;->AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 1120
    sget-object v0, Landroid/view/MotionEvent;->AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 1121
    .local v0, names:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string v1, "AXIS_X"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1122
    const-string v1, "AXIS_Y"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1123
    const-string v1, "AXIS_PRESSURE"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1124
    const-string v1, "AXIS_SIZE"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1125
    const-string v1, "AXIS_TOUCH_MAJOR"

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1126
    const/4 v1, 0x5

    const-string v2, "AXIS_TOUCH_MINOR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1127
    const/4 v1, 0x6

    const-string v2, "AXIS_TOOL_MAJOR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1128
    const/4 v1, 0x7

    const-string v2, "AXIS_TOOL_MINOR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1129
    const/16 v1, 0x8

    const-string v2, "AXIS_ORIENTATION"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1130
    const/16 v1, 0x9

    const-string v2, "AXIS_VSCROLL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1131
    const/16 v1, 0xa

    const-string v2, "AXIS_HSCROLL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1132
    const/16 v1, 0xb

    const-string v2, "AXIS_Z"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1133
    const/16 v1, 0xc

    const-string v2, "AXIS_RX"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1134
    const/16 v1, 0xd

    const-string v2, "AXIS_RY"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1135
    const/16 v1, 0xe

    const-string v2, "AXIS_RZ"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1136
    const/16 v1, 0xf

    const-string v2, "AXIS_HAT_X"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1137
    const/16 v1, 0x10

    const-string v2, "AXIS_HAT_Y"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1138
    const/16 v1, 0x11

    const-string v2, "AXIS_LTRIGGER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1139
    const/16 v1, 0x12

    const-string v2, "AXIS_RTRIGGER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1140
    const/16 v1, 0x13

    const-string v2, "AXIS_THROTTLE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1141
    const/16 v1, 0x14

    const-string v2, "AXIS_RUDDER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1142
    const/16 v1, 0x15

    const-string v2, "AXIS_WHEEL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1143
    const/16 v1, 0x16

    const-string v2, "AXIS_GAS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1144
    const/16 v1, 0x17

    const-string v2, "AXIS_BRAKE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1145
    const/16 v1, 0x18

    const-string v2, "AXIS_DISTANCE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1146
    const/16 v1, 0x19

    const-string v2, "AXIS_TILT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1147
    const/16 v1, 0x20

    const-string v2, "AXIS_GENERIC_1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1148
    const/16 v1, 0x21

    const-string v2, "AXIS_GENERIC_2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1149
    const/16 v1, 0x22

    const-string v2, "AXIS_GENERIC_3"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1150
    const/16 v1, 0x23

    const-string v2, "AXIS_GENERIC_4"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1151
    const/16 v1, 0x24

    const-string v2, "AXIS_GENERIC_5"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1152
    const/16 v1, 0x25

    const-string v2, "AXIS_GENERIC_6"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1153
    const/16 v1, 0x26

    const-string v2, "AXIS_GENERIC_7"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1154
    const/16 v1, 0x27

    const-string v2, "AXIS_GENERIC_8"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1155
    const/16 v1, 0x28

    const-string v2, "AXIS_GENERIC_9"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1156
    const/16 v1, 0x29

    const-string v2, "AXIS_GENERIC_10"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1157
    const/16 v1, 0x2a

    const-string v2, "AXIS_GENERIC_11"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1158
    const/16 v1, 0x2b

    const-string v2, "AXIS_GENERIC_12"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1159
    const/16 v1, 0x2c

    const-string v2, "AXIS_GENERIC_13"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1160
    const/16 v1, 0x2d

    const-string v2, "AXIS_GENERIC_14"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1161
    const/16 v1, 0x2e

    const-string v2, "AXIS_GENERIC_15"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1162
    const/16 v1, 0x2f

    const-string v2, "AXIS_GENERIC_16"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1175
    const-string/jumbo v1, "ro.revision"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 1244
    :cond_0
    const/16 v1, 0x20

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "BUTTON_PRIMARY"

    aput-object v2, v1, v4

    const-string v2, "BUTTON_SECONDARY"

    aput-object v2, v1, v5

    const-string v2, "BUTTON_TERTIARY"

    aput-object v2, v1, v6

    const-string v2, "BUTTON_BACK"

    aput-object v2, v1, v7

    const-string v2, "BUTTON_FORWARD"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "0x00000020"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "0x00000040"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "0x00000080"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "0x00000100"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "0x00000200"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "0x00000400"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "0x00000800"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "0x00001000"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "0x00002000"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "0x00004000"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "0x00008000"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "0x00010000"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "0x00020000"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "0x00040000"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "0x00080000"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "0x00100000"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "0x00200000"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "0x00400000"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "0x00800000"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "0x01000000"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "0x02000000"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "0x04000000"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "0x08000000"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "0x10000000"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "0x20000000"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "0x40000000"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "0x80000000"

    aput-object v3, v1, v2

    sput-object v1, Landroid/view/MotionEvent;->BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

    .line 1320
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 1322
    sget-object v0, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 1323
    const-string v1, "TOOL_TYPE_UNKNOWN"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1324
    const-string v1, "TOOL_TYPE_FINGER"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1325
    const-string v1, "TOOL_TYPE_STYLUS"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1326
    const-string v1, "TOOL_TYPE_MOUSE"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1327
    const-string v1, "TOOL_TYPE_ERASER"

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1334
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    .line 1340
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    .line 3413
    new-instance v1, Landroid/view/MotionEvent$1;

    invoke-direct {v1}, Landroid/view/MotionEvent$1;-><init>()V

    sput-object v1, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1418
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1419
    return-void
.end method

.method public static actionToString(I)Ljava/lang/String;
    .locals 3
    .parameter "action"

    .prologue
    .line 3294
    packed-switch p0, :pswitch_data_0

    .line 3314
    :pswitch_0
    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v0, v1, 0x8

    .line 3315
    .local v0, index:I
    and-int/lit16 v1, p0, 0xff

    packed-switch v1, :pswitch_data_1

    .line 3321
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .end local v0           #index:I
    :goto_0
    return-object v1

    .line 3296
    :pswitch_1
    const-string v1, "ACTION_DOWN"

    goto :goto_0

    .line 3298
    :pswitch_2
    const-string v1, "ACTION_UP"

    goto :goto_0

    .line 3300
    :pswitch_3
    const-string v1, "ACTION_CANCEL"

    goto :goto_0

    .line 3302
    :pswitch_4
    const-string v1, "ACTION_OUTSIDE"

    goto :goto_0

    .line 3304
    :pswitch_5
    const-string v1, "ACTION_MOVE"

    goto :goto_0

    .line 3306
    :pswitch_6
    const-string v1, "ACTION_HOVER_MOVE"

    goto :goto_0

    .line 3308
    :pswitch_7
    const-string v1, "ACTION_SCROLL"

    goto :goto_0

    .line 3310
    :pswitch_8
    const-string v1, "ACTION_HOVER_ENTER"

    goto :goto_0

    .line 3312
    :pswitch_9
    const-string v1, "ACTION_HOVER_EXIT"

    goto :goto_0

    .line 3317
    .restart local v0       #index:I
    :pswitch_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_POINTER_DOWN("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3319
    :pswitch_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_POINTER_UP("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3294
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 3315
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static axisFromString(Ljava/lang/String;)I
    .locals 5
    .parameter "symbolicName"

    .prologue
    .line 3346
    if-nez p0, :cond_0

    .line 3347
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "symbolicName must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3350
    :cond_0
    sget-object v3, Landroid/view/MotionEvent;->AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 3351
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 3352
    sget-object v3, Landroid/view/MotionEvent;->AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3360
    .end local v2           #i:I
    :goto_1
    return v2

    .line 3351
    .restart local v2       #i:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3358
    :cond_2
    const/16 v3, 0xa

    :try_start_0
    invoke-static {p0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_1

    .line 3359
    :catch_0
    move-exception v1

    .line 3360
    .local v1, ex:Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public static axisToString(I)Ljava/lang/String;
    .locals 2
    .parameter "axis"

    .prologue
    .line 3333
    sget-object v1, Landroid/view/MotionEvent;->AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3334
    .local v0, symbolicName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0           #symbolicName:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #symbolicName:Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static buttonStateToString(I)Ljava/lang/String;
    .locals 5
    .parameter "buttonState"

    .prologue
    .line 3375
    if-nez p0, :cond_1

    .line 3376
    const-string v2, "0"

    .line 3397
    :cond_0
    :goto_0
    return-object v2

    .line 3378
    :cond_1
    const/4 v3, 0x0

    .line 3379
    .local v3, result:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 3380
    .local v0, i:I
    :goto_1
    if-eqz p0, :cond_5

    .line 3381
    and-int/lit8 v4, p0, 0x1

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    .line 3382
    .local v1, isSet:Z
    :goto_2
    ushr-int/lit8 p0, p0, 0x1

    .line 3383
    if-eqz v1, :cond_2

    .line 3384
    sget-object v4, Landroid/view/MotionEvent;->BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

    aget-object v2, v4, v0

    .line 3385
    .local v2, name:Ljava/lang/String;
    if-nez v3, :cond_4

    .line 3386
    if-eqz p0, :cond_0

    .line 3389
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #result:Ljava/lang/StringBuilder;
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3395
    .end local v2           #name:Ljava/lang/String;
    .restart local v3       #result:Ljava/lang/StringBuilder;
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 3396
    goto :goto_1

    .line 3381
    .end local v1           #isSet:Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 3391
    .restart local v1       #isSet:Z
    .restart local v2       #name:Ljava/lang/String;
    :cond_4
    const/16 v4, 0x7c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3392
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 3397
    .end local v1           #isSet:Z
    .end local v2           #name:Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static final clamp(FFF)F
    .locals 1
    .parameter "value"
    .parameter "low"
    .parameter "high"

    .prologue
    .line 3119
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .line 3124
    .end local p1
    :goto_0
    return p1

    .line 3121
    .restart local p1
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    .line 3122
    goto :goto_0

    :cond_1
    move p1, p0

    .line 3124
    goto :goto_0
.end method

.method public static createFromParcelBody(Landroid/os/Parcel;)Landroid/view/MotionEvent;
    .locals 2
    .parameter "in"

    .prologue
    .line 3427
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 3428
    .local v0, ev:Landroid/view/MotionEvent;
    iget v1, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v1, p0}, Landroid/view/MotionEvent;->nativeReadFromParcel(ILandroid/os/Parcel;)I

    move-result v1

    iput v1, v0, Landroid/view/MotionEvent;->mNativePtr:I

    .line 3429
    return-object v0
.end method

.method private static final ensureSharedTempPointerCapacity(I)V
    .locals 2
    .parameter "desiredCapacity"

    .prologue
    .line 1346
    sget-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v1, v1

    if-ge v1, p0, :cond_3

    .line 1348
    :cond_0
    sget-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v0, v1

    .line 1349
    .local v0, capacity:I
    :goto_0
    if-ge v0, p0, :cond_2

    .line 1350
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1348
    .end local v0           #capacity:I
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 1352
    .restart local v0       #capacity:I
    :cond_2
    invoke-static {v0}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    sput-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 1353
    invoke-static {v0}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v1

    sput-object v1, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 1354
    new-array v1, v0, [I

    sput-object v1, Landroid/view/MotionEvent;->gSharedTempPointerIndexMap:[I

    .line 1356
    .end local v0           #capacity:I
    :cond_3
    return-void
.end method

.method private static native nativeAddBatch(IJ[Landroid/view/MotionEvent$PointerCoords;I)V
.end method

.method private static native nativeCopy(IIZ)I
.end method

.method private static native nativeDispose(I)V
.end method

.method private static native nativeFindPointerIndex(II)I
.end method

.method private static native nativeGetAction(I)I
.end method

.method private static native nativeGetAxisValue(IIII)F
.end method

.method private static native nativeGetButtonState(I)I
.end method

.method private static native nativeGetDeviceId(I)I
.end method

.method private static native nativeGetDownTimeNanos(I)J
.end method

.method private static native nativeGetEdgeFlags(I)I
.end method

.method private static native nativeGetEventTimeNanos(II)J
.end method

.method private static native nativeGetFlags(I)I
.end method

.method private static native nativeGetHistorySize(I)I
.end method

.method private static native nativeGetMetaState(I)I
.end method

.method private static native nativeGetPointerCoords(IIILandroid/view/MotionEvent$PointerCoords;)V
.end method

.method private static native nativeGetPointerCount(I)I
.end method

.method private static native nativeGetPointerId(II)I
.end method

.method private static native nativeGetPointerProperties(IILandroid/view/MotionEvent$PointerProperties;)V
.end method

.method private static native nativeGetRawAxisValue(IIII)F
.end method

.method private static native nativeGetSource(I)I
.end method

.method private static native nativeGetToolType(II)I
.end method

.method private static native nativeGetXOffset(I)F
.end method

.method private static native nativeGetXPrecision(I)F
.end method

.method private static native nativeGetYOffset(I)F
.end method

.method private static native nativeGetYPrecision(I)F
.end method

.method private static native nativeInitialize(IIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)I
.end method

.method private static native nativeIsHoverEvent(I)Z
.end method

.method private static native nativeIsTouchEvent(I)Z
.end method

.method private static native nativeOffsetLocation(IFF)V
.end method

.method private static native nativeReadFromParcel(ILandroid/os/Parcel;)I
.end method

.method private static native nativeScale(IF)V
.end method

.method private static native nativeSetAction(II)V
.end method

.method private static native nativeSetDownTimeNanos(IJ)V
.end method

.method private static native nativeSetEdgeFlags(II)V
.end method

.method private static native nativeSetFlags(II)V
.end method

.method private static native nativeSetSource(II)I
.end method

.method private static native nativeTransform(ILandroid/graphics/Matrix;)V
.end method

.method private static native nativeWriteToParcel(ILandroid/os/Parcel;)V
.end method

.method private static obtain()Landroid/view/MotionEvent;
    .locals 3

    .prologue
    .line 1435
    sget-object v2, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1436
    :try_start_0
    sget-object v0, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 1437
    .local v0, ev:Landroid/view/MotionEvent;
    if-nez v0, :cond_0

    .line 1438
    new-instance v0, Landroid/view/MotionEvent;

    .end local v0           #ev:Landroid/view/MotionEvent;
    invoke-direct {v0}, Landroid/view/MotionEvent;-><init>()V

    monitor-exit v2

    .line 1445
    .restart local v0       #ev:Landroid/view/MotionEvent;
    :goto_0
    return-object v0

    .line 1440
    :cond_0
    iget-object v1, v0, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    sput-object v1, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 1441
    sget v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    .line 1442
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1443
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    .line 1444
    invoke-virtual {v0}, Landroid/view/MotionEvent;->prepareForReuse()V

    goto :goto_0

    .line 1442
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;
    .locals 22
    .parameter "downTime"
    .parameter "eventTime"
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "size"
    .parameter "metaState"
    .parameter "xPrecision"
    .parameter "yPrecision"
    .parameter "deviceId"
    .parameter "edgeFlags"

    .prologue
    .line 1569
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v20

    .line 1570
    .local v20, ev:Landroid/view/MotionEvent;
    sget-object v21, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v21

    .line 1571
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 1572
    sget-object v18, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 1573
    .local v18, pp:[Landroid/view/MotionEvent$PointerProperties;
    const/4 v1, 0x0

    aget-object v1, v18, v1

    invoke-virtual {v1}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 1574
    const/4 v1, 0x0

    aget-object v1, v18, v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 1576
    sget-object v19, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 1577
    .local v19, pc:[Landroid/view/MotionEvent$PointerCoords;
    const/4 v1, 0x0

    aget-object v1, v19, v1

    invoke-virtual {v1}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 1578
    const/4 v1, 0x0

    aget-object v1, v19, v1

    move/from16 v0, p5

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1579
    const/4 v1, 0x0

    aget-object v1, v19, v1

    move/from16 v0, p6

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1580
    const/4 v1, 0x0

    aget-object v1, v19, v1

    move/from16 v0, p7

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 1581
    const/4 v1, 0x0

    aget-object v1, v19, v1

    move/from16 v0, p8

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 1583
    move-object/from16 v0, v20

    iget v1, v0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/32 v6, 0xf4240

    mul-long v13, p0, v6

    const-wide/32 v6, 0xf4240

    mul-long v15, p2, v6

    const/16 v17, 0x1

    move/from16 v2, p12

    move/from16 v4, p4

    move/from16 v6, p13

    move/from16 v7, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-static/range {v1 .. v19}, Landroid/view/MotionEvent;->nativeInitialize(IIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)I

    move-result v1

    move-object/from16 v0, v20

    iput v1, v0, Landroid/view/MotionEvent;->mNativePtr:I

    .line 1588
    monitor-exit v21

    return-object v20

    .line 1589
    .end local v18           #pp:[Landroid/view/MotionEvent$PointerProperties;
    .end local v19           #pc:[Landroid/view/MotionEvent$PointerCoords;
    :catchall_0
    move-exception v1

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static obtain(JJIFFI)Landroid/view/MotionEvent;
    .locals 14
    .parameter "downTime"
    .parameter "eventTime"
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "metaState"

    .prologue
    .line 1650
    const/high16 v7, 0x3f80

    const/high16 v8, 0x3f80

    const/high16 v10, 0x3f80

    const/high16 v11, 0x3f80

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v9, p7

    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(JJIIFFFFIFFII)Landroid/view/MotionEvent;
    .locals 14
    .parameter "downTime"
    .parameter "eventTime"
    .parameter "action"
    .parameter "pointerCount"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "size"
    .parameter "metaState"
    .parameter "xPrecision"
    .parameter "yPrecision"
    .parameter "deviceId"
    .parameter "edgeFlags"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1629
    move-wide v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;
    .locals 20
    .parameter "downTime"
    .parameter "eventTime"
    .parameter "action"
    .parameter "pointerCount"
    .parameter "pointerIds"
    .parameter "pointerCoords"
    .parameter "metaState"
    .parameter "xPrecision"
    .parameter "yPrecision"
    .parameter "deviceId"
    .parameter "edgeFlags"
    .parameter "source"
    .parameter "flags"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1524
    sget-object v19, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v19

    .line 1525
    :try_start_0
    invoke-static/range {p5 .. p5}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 1526
    sget-object v8, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 1527
    .local v8, pp:[Landroid/view/MotionEvent$PointerProperties;
    const/16 v18, 0x0

    .local v18, i:I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, p5

    if-ge v0, v1, :cond_0

    .line 1528
    aget-object v2, v8, v18

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 1529
    aget-object v2, v8, v18

    aget v3, p6, v18

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 1527
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 1531
    :cond_0
    const/4 v11, 0x0

    move-wide/from16 v2, p0

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    monitor-exit v19

    return-object v2

    .line 1534
    .end local v8           #pp:[Landroid/view/MotionEvent$PointerProperties;
    .end local v18           #i:I
    :catchall_0
    move-exception v2

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;
    .locals 21
    .parameter "downTime"
    .parameter "eventTime"
    .parameter "action"
    .parameter "pointerCount"
    .parameter "pointerProperties"
    .parameter "pointerCoords"
    .parameter "metaState"
    .parameter "buttonState"
    .parameter "xPrecision"
    .parameter "yPrecision"
    .parameter "deviceId"
    .parameter "edgeFlags"
    .parameter "source"
    .parameter "flags"

    .prologue
    .line 1481
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v20

    .line 1482
    .local v20, ev:Landroid/view/MotionEvent;
    move-object/from16 v0, v20

    iget v1, v0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/32 v2, 0xf4240

    mul-long v13, p0, v2

    const-wide/32 v2, 0xf4240

    mul-long v15, p2, v2

    move/from16 v2, p12

    move/from16 v3, p14

    move/from16 v4, p4

    move/from16 v5, p15

    move/from16 v6, p13

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v17, p5

    move-object/from16 v18, p6

    move-object/from16 v19, p7

    invoke-static/range {v1 .. v19}, Landroid/view/MotionEvent;->nativeInitialize(IIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)I

    move-result v1

    move-object/from16 v0, v20

    iput v1, v0, Landroid/view/MotionEvent;->mNativePtr:I

    .line 1487
    return-object v20
.end method

.method public static obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 4
    .parameter "other"

    .prologue
    .line 1658
    if-nez p0, :cond_0

    .line 1659
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "other motion event must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1662
    :cond_0
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 1663
    .local v0, ev:Landroid/view/MotionEvent;
    iget v1, v0, Landroid/view/MotionEvent;->mNativePtr:I

    iget v2, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/view/MotionEvent;->nativeCopy(IIZ)I

    move-result v1

    iput v1, v0, Landroid/view/MotionEvent;->mNativePtr:I

    .line 1664
    return-object v0
.end method

.method public static obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 4
    .parameter "other"

    .prologue
    .line 1672
    if-nez p0, :cond_0

    .line 1673
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "other motion event must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1676
    :cond_0
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 1677
    .local v0, ev:Landroid/view/MotionEvent;
    iget v1, v0, Landroid/view/MotionEvent;->mNativePtr:I

    iget v2, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/MotionEvent;->nativeCopy(IIZ)I

    move-result v1

    iput v1, v0, Landroid/view/MotionEvent;->mNativePtr:I

    .line 1678
    return-object v0
.end method

.method public static toolTypeToString(I)Ljava/lang/String;
    .locals 2
    .parameter "toolType"

    .prologue
    .line 3409
    sget-object v1, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3410
    .local v0, symbolicName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0           #symbolicName:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #symbolicName:Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final addBatch(JFFFFI)V
    .locals 5
    .parameter "eventTime"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "size"
    .parameter "metaState"

    .prologue
    .line 3012
    sget-object v2, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3013
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 3014
    sget-object v0, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 3015
    .local v0, pc:[Landroid/view/MotionEvent$PointerCoords;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 3016
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput p3, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3017
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput p4, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 3018
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput p5, v1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 3019
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput p6, v1, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 3021
    iget v1, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const-wide/32 v3, 0xf4240

    mul-long/2addr v3, p1

    invoke-static {v1, v3, v4, v0, p7}, Landroid/view/MotionEvent;->nativeAddBatch(IJ[Landroid/view/MotionEvent$PointerCoords;I)V

    .line 3022
    monitor-exit v2

    .line 3023
    return-void

    .line 3022
    .end local v0           #pc:[Landroid/view/MotionEvent$PointerCoords;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final addBatch(J[Landroid/view/MotionEvent$PointerCoords;I)V
    .locals 3
    .parameter "eventTime"
    .parameter "pointerCoords"
    .parameter "metaState"

    .prologue
    .line 3037
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const-wide/32 v1, 0xf4240

    mul-long/2addr v1, p1

    invoke-static {v0, v1, v2, p3, p4}, Landroid/view/MotionEvent;->nativeAddBatch(IJ[Landroid/view/MotionEvent$PointerCoords;I)V

    .line 3038
    return-void
.end method

.method public final addBatch(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    .line 3053
    iget v11, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v11}, Landroid/view/MotionEvent;->nativeGetAction(I)I

    move-result v0

    .line 3054
    .local v0, action:I
    const/4 v11, 0x2

    if-eq v0, v11, :cond_0

    const/4 v11, 0x7

    if-eq v0, v11, :cond_0

    .line 3055
    const/4 v11, 0x0

    .line 3098
    :goto_0
    return v11

    .line 3057
    :cond_0
    iget v11, p1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v11}, Landroid/view/MotionEvent;->nativeGetAction(I)I

    move-result v11

    if-eq v0, v11, :cond_1

    .line 3058
    const/4 v11, 0x0

    goto :goto_0

    .line 3061
    :cond_1
    iget v11, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v11}, Landroid/view/MotionEvent;->nativeGetDeviceId(I)I

    move-result v11

    iget v12, p1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v12}, Landroid/view/MotionEvent;->nativeGetDeviceId(I)I

    move-result v12

    if-ne v11, v12, :cond_2

    iget v11, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v11}, Landroid/view/MotionEvent;->nativeGetSource(I)I

    move-result v11

    iget v12, p1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v12}, Landroid/view/MotionEvent;->nativeGetSource(I)I

    move-result v12

    if-ne v11, v12, :cond_2

    iget v11, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v11}, Landroid/view/MotionEvent;->nativeGetFlags(I)I

    move-result v11

    iget v12, p1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v12}, Landroid/view/MotionEvent;->nativeGetFlags(I)I

    move-result v12

    if-eq v11, v12, :cond_3

    .line 3064
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 3067
    :cond_3
    iget v11, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v11}, Landroid/view/MotionEvent;->nativeGetPointerCount(I)I

    move-result v9

    .line 3068
    .local v9, pointerCount:I
    iget v11, p1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v11}, Landroid/view/MotionEvent;->nativeGetPointerCount(I)I

    move-result v11

    if-eq v9, v11, :cond_4

    .line 3069
    const/4 v11, 0x0

    goto :goto_0

    .line 3072
    :cond_4
    sget-object v12, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v12

    .line 3073
    const/4 v11, 0x2

    :try_start_0
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v11}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 3074
    sget-object v10, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 3075
    .local v10, pp:[Landroid/view/MotionEvent$PointerProperties;
    sget-object v8, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 3077
    .local v8, pc:[Landroid/view/MotionEvent$PointerCoords;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v9, :cond_6

    .line 3078
    iget v11, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v13, 0x0

    aget-object v13, v10, v13

    invoke-static {v11, v6, v13}, Landroid/view/MotionEvent;->nativeGetPointerProperties(IILandroid/view/MotionEvent$PointerProperties;)V

    .line 3079
    iget v11, p1, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v13, 0x1

    aget-object v13, v10, v13

    invoke-static {v11, v6, v13}, Landroid/view/MotionEvent;->nativeGetPointerProperties(IILandroid/view/MotionEvent$PointerProperties;)V

    .line 3080
    const/4 v11, 0x0

    aget-object v11, v10, v11

    const/4 v13, 0x1

    aget-object v13, v10, v13

    #calls: Landroid/view/MotionEvent$PointerProperties;->equals(Landroid/view/MotionEvent$PointerProperties;)Z
    invoke-static {v11, v13}, Landroid/view/MotionEvent$PointerProperties;->access$000(Landroid/view/MotionEvent$PointerProperties;Landroid/view/MotionEvent$PointerProperties;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 3081
    const/4 v11, 0x0

    monitor-exit v12

    goto :goto_0

    .line 3097
    .end local v6           #i:I
    .end local v8           #pc:[Landroid/view/MotionEvent$PointerCoords;
    .end local v10           #pp:[Landroid/view/MotionEvent$PointerProperties;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 3077
    .restart local v6       #i:I
    .restart local v8       #pc:[Landroid/view/MotionEvent$PointerCoords;
    .restart local v10       #pp:[Landroid/view/MotionEvent$PointerProperties;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3085
    :cond_6
    :try_start_1
    iget v11, p1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v11}, Landroid/view/MotionEvent;->nativeGetMetaState(I)I

    move-result v7

    .line 3086
    .local v7, metaState:I
    iget v11, p1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v11}, Landroid/view/MotionEvent;->nativeGetHistorySize(I)I

    move-result v5

    .line 3087
    .local v5, historySize:I
    const/4 v3, 0x0

    .local v3, h:I
    :goto_2
    if-gt v3, v5, :cond_9

    .line 3088
    if-ne v3, v5, :cond_7

    const/high16 v4, -0x8000

    .line 3090
    .local v4, historyPos:I
    :goto_3
    const/4 v6, 0x0

    :goto_4
    if-ge v6, v9, :cond_8

    .line 3091
    iget v11, p1, Landroid/view/MotionEvent;->mNativePtr:I

    aget-object v13, v8, v6

    invoke-static {v11, v6, v4, v13}, Landroid/view/MotionEvent;->nativeGetPointerCoords(IIILandroid/view/MotionEvent$PointerCoords;)V

    .line 3090
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .end local v4           #historyPos:I
    :cond_7
    move v4, v3

    .line 3088
    goto :goto_3

    .line 3094
    .restart local v4       #historyPos:I
    :cond_8
    iget v11, p1, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v11, v4}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(II)J

    move-result-wide v1

    .line 3095
    .local v1, eventTimeNanos:J
    iget v11, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v11, v1, v2, v8, v7}, Landroid/view/MotionEvent;->nativeAddBatch(IJ[Landroid/view/MotionEvent$PointerCoords;I)V

    .line 3087
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3097
    .end local v1           #eventTimeNanos:J
    .end local v4           #historyPos:I
    :cond_9
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3098
    const/4 v11, 0x1

    goto/16 :goto_0
.end method

.method public final clampNoHistory(FFFF)Landroid/view/MotionEvent;
    .locals 24
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 3132
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v21

    .line 3133
    .local v21, ev:Landroid/view/MotionEvent;
    sget-object v23, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v23

    .line 3134
    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v2}, Landroid/view/MotionEvent;->nativeGetPointerCount(I)I

    move-result v18

    .line 3136
    .local v18, pointerCount:I
    invoke-static/range {v18 .. v18}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 3137
    sget-object v19, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 3138
    .local v19, pp:[Landroid/view/MotionEvent$PointerProperties;
    sget-object v20, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 3140
    .local v20, pc:[Landroid/view/MotionEvent$PointerCoords;
    const/16 v22, 0x0

    .local v22, i:I
    :goto_0
    move/from16 v0, v22

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 3141
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/MotionEvent;->mNativePtr:I

    aget-object v3, v19, v22

    move/from16 v0, v22

    invoke-static {v2, v0, v3}, Landroid/view/MotionEvent;->nativeGetPointerProperties(IILandroid/view/MotionEvent$PointerProperties;)V

    .line 3142
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/MotionEvent;->mNativePtr:I

    const/high16 v3, -0x8000

    aget-object v4, v20, v22

    move/from16 v0, v22

    invoke-static {v2, v0, v3, v4}, Landroid/view/MotionEvent;->nativeGetPointerCoords(IIILandroid/view/MotionEvent$PointerCoords;)V

    .line 3143
    aget-object v2, v20, v22

    aget-object v3, v20, v22

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    move/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v3, v0, v1}, Landroid/view/MotionEvent;->clamp(FFF)F

    move-result v3

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3144
    aget-object v2, v20, v22

    aget-object v3, v20, v22

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    move/from16 v0, p2

    move/from16 v1, p4

    invoke-static {v3, v0, v1}, Landroid/view/MotionEvent;->clamp(FFF)F

    move-result v3

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 3140
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 3146
    :cond_0
    move-object/from16 v0, v21

    iget v2, v0, Landroid/view/MotionEvent;->mNativePtr:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v3}, Landroid/view/MotionEvent;->nativeGetDeviceId(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v4}, Landroid/view/MotionEvent;->nativeGetSource(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v5}, Landroid/view/MotionEvent;->nativeGetAction(I)I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v6}, Landroid/view/MotionEvent;->nativeGetFlags(I)I

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v7}, Landroid/view/MotionEvent;->nativeGetEdgeFlags(I)I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v8}, Landroid/view/MotionEvent;->nativeGetMetaState(I)I

    move-result v8

    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v9}, Landroid/view/MotionEvent;->nativeGetButtonState(I)I

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v10}, Landroid/view/MotionEvent;->nativeGetXOffset(I)F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v11}, Landroid/view/MotionEvent;->nativeGetYOffset(I)F

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v12}, Landroid/view/MotionEvent;->nativeGetXPrecision(I)F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v13}, Landroid/view/MotionEvent;->nativeGetYPrecision(I)F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v14}, Landroid/view/MotionEvent;->nativeGetDownTimeNanos(I)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/MotionEvent;->mNativePtr:I

    move/from16 v16, v0

    const/high16 v17, -0x8000

    invoke-static/range {v16 .. v17}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(II)J

    move-result-wide v16

    invoke-static/range {v2 .. v20}, Landroid/view/MotionEvent;->nativeInitialize(IIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)I

    move-result v2

    move-object/from16 v0, v21

    iput v2, v0, Landroid/view/MotionEvent;->mNativePtr:I

    .line 3156
    monitor-exit v23

    return-object v21

    .line 3157
    .end local v18           #pointerCount:I
    .end local v19           #pp:[Landroid/view/MotionEvent$PointerProperties;
    .end local v20           #pc:[Landroid/view/MotionEvent$PointerCoords;
    .end local v22           #i:I
    :catchall_0
    move-exception v2

    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public bridge synthetic copy()Landroid/view/InputEvent;
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public copy()Landroid/view/MotionEvent;
    .locals 1

    .prologue
    .line 1684
    invoke-static {p0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1424
    :try_start_0
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    if-eqz v0, :cond_0

    .line 1425
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeDispose(I)V

    .line 1426
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/MotionEvent;->mNativePtr:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1429
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1431
    return-void

    .line 1429
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final findPointerIndex(I)I
    .locals 1
    .parameter "pointerId"

    .prologue
    .line 2133
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeFindPointerIndex(II)I

    move-result v0

    return v0
.end method

.method public final getAction()I
    .locals 1

    .prologue
    .line 1747
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetAction(I)I

    move-result v0

    return v0
.end method

.method public final getActionIndex()I
    .locals 2

    .prologue
    .line 1770
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetAction(I)I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final getActionMasked()I
    .locals 1

    .prologue
    .line 1756
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetAction(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final getAngle()F
    .locals 1

    .prologue
    .line 2038
    const/high16 v0, -0x4080

    return v0
.end method

.method public final getAngle(I)F
    .locals 1
    .parameter "pointerIndex"

    .prologue
    .line 2347
    const/high16 v0, -0x4080

    return v0
.end method

.method public final getAxisValue(I)F
    .locals 3
    .parameter "axis"

    .prologue
    .line 1969
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x0

    const/high16 v2, -0x8000

    invoke-static {v0, p1, v1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getAxisValue(II)F
    .locals 2
    .parameter "axis"
    .parameter "pointerIndex"

    .prologue
    .line 2403
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/high16 v1, -0x8000

    invoke-static {v0, p1, p2, v1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getButtonState()I
    .locals 1

    .prologue
    .line 2461
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetButtonState(I)I

    move-result v0

    return v0
.end method

.method public final getDeviceId()I
    .locals 1

    .prologue
    .line 1724
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetDeviceId(I)I

    move-result v0

    return v0
.end method

.method public final getDownTime()J
    .locals 4

    .prologue
    .line 1825
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetDownTimeNanos(I)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getEccen()F
    .locals 1

    .prologue
    .line 2024
    const/high16 v0, -0x4080

    return v0
.end method

.method public final getEccen(I)F
    .locals 1
    .parameter "pointerIndex"

    .prologue
    .line 2332
    const/high16 v0, -0x4080

    return v0
.end method

.method public final getEdgeFlags()I
    .locals 1

    .prologue
    .line 2939
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetEdgeFlags(I)I

    move-result v0

    return v0
.end method

.method public final getEventTime()J
    .locals 4

    .prologue
    .line 1847
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/high16 v1, -0x8000

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(II)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getEventTimeNano()J
    .locals 2

    .prologue
    .line 1866
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/high16 v1, -0x8000

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getFlags()I
    .locals 1

    .prologue
    .line 1803
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetFlags(I)I

    move-result v0

    return v0
.end method

.method public final getHistoricalAxisValue(II)F
    .locals 2
    .parameter "axis"
    .parameter "pos"

    .prologue
    .line 2721
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalAxisValue(III)F
    .locals 1
    .parameter "axis"
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 2902
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1, p2, p3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalEventTime(I)J
    .locals 4
    .parameter "pos"

    .prologue
    .line 2543
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(II)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getHistoricalEventTimeNano(I)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 2569
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getHistoricalOrientation(I)F
    .locals 3
    .parameter "pos"

    .prologue
    .line 2704
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalOrientation(II)F
    .locals 2
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 2883
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/16 v1, 0x8

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V
    .locals 1
    .parameter "pointerIndex"
    .parameter "pos"
    .parameter "outPointerCoords"

    .prologue
    .line 2923
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1, p2, p3}, Landroid/view/MotionEvent;->nativeGetPointerCoords(IIILandroid/view/MotionEvent$PointerCoords;)V

    .line 2924
    return-void
.end method

.method public final getHistoricalPressure(I)F
    .locals 3
    .parameter "pos"

    .prologue
    .line 2614
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalPressure(II)F
    .locals 2
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 2775
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x2

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalSize(I)F
    .locals 3
    .parameter "pos"

    .prologue
    .line 2629
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalSize(II)F
    .locals 2
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 2793
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x3

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalToolMajor(I)F
    .locals 3
    .parameter "pos"

    .prologue
    .line 2674
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalToolMajor(II)F
    .locals 2
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 2847
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x6

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalToolMinor(I)F
    .locals 3
    .parameter "pos"

    .prologue
    .line 2689
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalToolMinor(II)F
    .locals 2
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 2865
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x7

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalTouchMajor(I)F
    .locals 3
    .parameter "pos"

    .prologue
    .line 2644
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalTouchMajor(II)F
    .locals 2
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 2811
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x4

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalTouchMinor(I)F
    .locals 3
    .parameter "pos"

    .prologue
    .line 2659
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalTouchMinor(II)F
    .locals 2
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 2829
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x5

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalX(I)F
    .locals 2
    .parameter "pos"

    .prologue
    const/4 v1, 0x0

    .line 2584
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, v1, v1, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalX(II)F
    .locals 2
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 2739
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalY(I)F
    .locals 3
    .parameter "pos"

    .prologue
    .line 2599
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalY(II)F
    .locals 2
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 2757
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x1

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistorySize()I
    .locals 1

    .prologue
    .line 2523
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetHistorySize(I)I

    move-result v0

    return v0
.end method

.method public final getMetaState()I
    .locals 1

    .prologue
    .line 2446
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetMetaState(I)I

    move-result v0

    return v0
.end method

.method public final getOrientation()F
    .locals 4

    .prologue
    .line 1956
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/high16 v3, -0x8000

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getOrientation(I)F
    .locals 3
    .parameter "pointerIndex"

    .prologue
    .line 2277
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/16 v1, 0x8

    const/high16 v2, -0x8000

    invoke-static {v0, v1, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getPalm()F
    .locals 1

    .prologue
    .line 2048
    const/high16 v0, -0x4080

    return v0
.end method

.method public final getPalm(I)F
    .locals 1
    .parameter "pointerIndex"

    .prologue
    .line 2357
    const/high16 v0, -0x4080

    return v0
.end method

.method public final getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V
    .locals 2
    .parameter "pointerIndex"
    .parameter "outPointerCoords"

    .prologue
    .line 2417
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/high16 v1, -0x8000

    invoke-static {v0, p1, v1, p2}, Landroid/view/MotionEvent;->nativeGetPointerCoords(IIILandroid/view/MotionEvent$PointerCoords;)V

    .line 2418
    return-void
.end method

.method public final getPointerCount()I
    .locals 1

    .prologue
    .line 2089
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetPointerCount(I)I

    move-result v0

    return v0
.end method

.method public final getPointerId(I)I
    .locals 1
    .parameter "pointerIndex"

    .prologue
    .line 2101
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeGetPointerId(II)I

    move-result v0

    return v0
.end method

.method public final getPointerIdBits()I
    .locals 5

    .prologue
    .line 3165
    const/4 v1, 0x0

    .line 3166
    .local v1, idBits:I
    iget v3, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v3}, Landroid/view/MotionEvent;->nativeGetPointerCount(I)I

    move-result v2

    .line 3167
    .local v2, pointerCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 3168
    const/4 v3, 0x1

    iget v4, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v4, v0}, Landroid/view/MotionEvent;->nativeGetPointerId(II)I

    move-result v4

    shl-int/2addr v3, v4

    or-int/2addr v1, v3

    .line 3167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3170
    :cond_0
    return v1
.end method

.method public final getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V
    .locals 1
    .parameter "pointerIndex"
    .parameter "outPointerProperties"

    .prologue
    .line 2432
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1, p2}, Landroid/view/MotionEvent;->nativeGetPointerProperties(IILandroid/view/MotionEvent$PointerProperties;)V

    .line 2433
    return-void
.end method

.method public final getPressure()F
    .locals 4

    .prologue
    .line 1896
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/high16 v3, -0x8000

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getPressure(I)F
    .locals 3
    .parameter "pointerIndex"

    .prologue
    .line 2180
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x2

    const/high16 v2, -0x8000

    invoke-static {v0, v1, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getRawX()F
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2474
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/high16 v1, -0x8000

    invoke-static {v0, v2, v2, v1}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getRawY()F
    .locals 4

    .prologue
    .line 2487
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, -0x8000

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getSize()F
    .locals 4

    .prologue
    .line 1906
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/high16 v3, -0x8000

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getSize(I)F
    .locals 3
    .parameter "pointerIndex"

    .prologue
    .line 2198
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x3

    const/high16 v2, -0x8000

    invoke-static {v0, v1, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getSource()I
    .locals 1

    .prologue
    .line 1730
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetSource(I)I

    move-result v0

    return v0
.end method

.method public final getSumSize()Ljava/lang/Float;
    .locals 2

    .prologue
    .line 2057
    const-string/jumbo v0, "ro.revision"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 2077
    :cond_0
    const/high16 v0, -0x4080

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public final getSumSize(I)Ljava/lang/Float;
    .locals 2
    .parameter "pointerIndex"

    .prologue
    .line 2364
    const-string/jumbo v0, "ro.revision"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 2385
    :cond_0
    const/high16 v0, -0x4080

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public final getSurfaceMajor()F
    .locals 1

    .prologue
    .line 1994
    const/high16 v0, -0x4080

    return v0
.end method

.method public final getSurfaceMajor(I)F
    .locals 1
    .parameter "pointerIndex"

    .prologue
    .line 2302
    const/high16 v0, -0x4080

    return v0
.end method

.method public final getSurfaceMinor()F
    .locals 1

    .prologue
    .line 2008
    const/high16 v0, -0x4080

    return v0
.end method

.method public final getSurfaceMinor(I)F
    .locals 1
    .parameter "pointerIndex"

    .prologue
    .line 2316
    const/high16 v0, -0x4080

    return v0
.end method

.method public final getSurfaceSize()F
    .locals 1

    .prologue
    .line 1980
    const/high16 v0, -0x4080

    return v0
.end method

.method public final getSurfaceSize(I)F
    .locals 1
    .parameter "pointerIndex"

    .prologue
    .line 2288
    const/high16 v0, -0x4080

    return v0
.end method

.method public final getToolMajor()F
    .locals 4

    .prologue
    .line 1936
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/high16 v3, -0x8000

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getToolMajor(I)F
    .locals 3
    .parameter "pointerIndex"

    .prologue
    .line 2242
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x6

    const/high16 v2, -0x8000

    invoke-static {v0, v1, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getToolMinor()F
    .locals 4

    .prologue
    .line 1946
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/high16 v3, -0x8000

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getToolMinor(I)F
    .locals 3
    .parameter "pointerIndex"

    .prologue
    .line 2258
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x7

    const/high16 v2, -0x8000

    invoke-static {v0, v1, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getToolType(I)I
    .locals 1
    .parameter "pointerIndex"

    .prologue
    .line 2121
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeGetToolType(II)I

    move-result v0

    return v0
.end method

.method public final getTouchMajor()F
    .locals 4

    .prologue
    .line 1916
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/high16 v3, -0x8000

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getTouchMajor(I)F
    .locals 3
    .parameter "pointerIndex"

    .prologue
    .line 2212
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x4

    const/high16 v2, -0x8000

    invoke-static {v0, v1, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getTouchMinor()F
    .locals 4

    .prologue
    .line 1926
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/high16 v3, -0x8000

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getTouchMinor(I)F
    .locals 3
    .parameter "pointerIndex"

    .prologue
    .line 2226
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x5

    const/high16 v2, -0x8000

    invoke-static {v0, v1, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getX()F
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1876
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/high16 v1, -0x8000

    invoke-static {v0, v2, v2, v1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getX(I)F
    .locals 3
    .parameter "pointerIndex"

    .prologue
    .line 2148
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x0

    const/high16 v2, -0x8000

    invoke-static {v0, v1, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getXPrecision()F
    .locals 1

    .prologue
    .line 2499
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetXPrecision(I)F

    move-result v0

    return v0
.end method

.method public final getY()F
    .locals 4

    .prologue
    .line 1886
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, -0x8000

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getY(I)F
    .locals 3
    .parameter "pointerIndex"

    .prologue
    .line 2163
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x1

    const/high16 v2, -0x8000

    invoke-static {v0, v1, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getYPrecision()F
    .locals 1

    .prologue
    .line 2511
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetYPrecision(I)F

    move-result v0

    return v0
.end method

.method public final isHoverEvent()Z
    .locals 1

    .prologue
    .line 1793
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeIsHoverEvent(I)Z

    move-result v0

    return v0
.end method

.method public final isTainted()Z
    .locals 2

    .prologue
    .line 1809
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 1810
    .local v0, flags:I
    const/high16 v1, -0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isTouchEvent()Z
    .locals 1

    .prologue
    .line 1785
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeIsTouchEvent(I)Z

    move-result v0

    return v0
.end method

.method public final isWithinBoundsNoHistory(FFFF)Z
    .locals 8
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v7, -0x8000

    .line 3107
    iget v6, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v6}, Landroid/view/MotionEvent;->nativeGetPointerCount(I)I

    move-result v1

    .line 3108
    .local v1, pointerCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 3109
    iget v6, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v6, v4, v0, v7}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v2

    .line 3110
    .local v2, x:F
    iget v6, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v6, v5, v0, v7}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v3

    .line 3111
    .local v3, y:F
    cmpg-float v6, v2, p1

    if-ltz v6, :cond_0

    cmpl-float v6, v2, p3

    if-gtz v6, :cond_0

    cmpg-float v6, v3, p2

    if-ltz v6, :cond_0

    cmpl-float v6, v3, p4

    if-lez v6, :cond_1

    .line 3115
    .end local v2           #x:F
    .end local v3           #y:F
    :cond_0
    :goto_1
    return v4

    .line 3108
    .restart local v2       #x:F
    .restart local v3       #y:F
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2           #x:F
    .end local v3           #y:F
    :cond_2
    move v4, v5

    .line 3115
    goto :goto_1
.end method

.method public final offsetLocation(FF)V
    .locals 2
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/4 v1, 0x0

    .line 2965
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    cmpl-float v0, p2, v1

    if-eqz v0, :cond_1

    .line 2966
    :cond_0
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1, p2}, Landroid/view/MotionEvent;->nativeOffsetLocation(IFF)V

    .line 2968
    :cond_1
    return-void
.end method

.method public final recycle()V
    .locals 3

    .prologue
    .line 1693
    invoke-super {p0}, Landroid/view/InputEvent;->recycle()V

    .line 1695
    sget-object v1, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1696
    :try_start_0
    sget v0, Landroid/view/MotionEvent;->gRecyclerUsed:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 1697
    sget v0, Landroid/view/MotionEvent;->gRecyclerUsed:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/MotionEvent;->gRecyclerUsed:I

    .line 1698
    sget-object v0, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    iput-object v0, p0, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    .line 1699
    sput-object p0, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 1701
    :cond_0
    monitor-exit v1

    .line 1702
    return-void

    .line 1701
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final scale(F)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 1716
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1717
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeScale(IF)V

    .line 1719
    :cond_0
    return-void
.end method

.method public final setAction(I)V
    .locals 1
    .parameter "action"

    .prologue
    .line 2956
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeSetAction(II)V

    .line 2957
    return-void
.end method

.method public final setDownTime(J)V
    .locals 3
    .parameter "downTime"

    .prologue
    .line 1835
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const-wide/32 v1, 0xf4240

    mul-long/2addr v1, p1

    invoke-static {v0, v1, v2}, Landroid/view/MotionEvent;->nativeSetDownTimeNanos(IJ)V

    .line 1836
    return-void
.end method

.method public final setEdgeFlags(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 2949
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeSetEdgeFlags(II)V

    .line 2950
    return-void
.end method

.method public final setLocation(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2978
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 2979
    .local v0, oldX:F
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 2980
    .local v1, oldY:F
    sub-float v2, p1, v0

    sub-float v3, p2, v1

    invoke-virtual {p0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2981
    return-void
.end method

.method public final setSource(I)V
    .locals 1
    .parameter "source"

    .prologue
    .line 1736
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeSetSource(II)I

    .line 1737
    return-void
.end method

.method public final setTainted(Z)V
    .locals 3
    .parameter "tainted"

    .prologue
    .line 1816
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 1817
    .local v0, flags:I
    iget v2, p0, Landroid/view/MotionEvent;->mNativePtr:I

    if-eqz p1, :cond_0

    const/high16 v1, -0x8000

    or-int/2addr v1, v0

    :goto_0
    invoke-static {v2, v1}, Landroid/view/MotionEvent;->nativeSetFlags(II)V

    .line 1818
    return-void

    .line 1817
    :cond_0
    const v1, 0x7fffffff

    and-int/2addr v1, v0

    goto :goto_0
.end method

.method public final split(I)Landroid/view/MotionEvent;
    .locals 36
    .parameter "idBits"

    .prologue
    .line 3178
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v22

    .line 3179
    .local v22, ev:Landroid/view/MotionEvent;
    sget-object v35, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v35

    .line 3180
    :try_start_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v3}, Landroid/view/MotionEvent;->nativeGetPointerCount(I)I

    move-result v34

    .line 3181
    .local v34, oldPointerCount:I
    invoke-static/range {v34 .. v34}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 3182
    sget-object v20, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 3183
    .local v20, pp:[Landroid/view/MotionEvent$PointerProperties;
    sget-object v21, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 3184
    .local v21, pc:[Landroid/view/MotionEvent$PointerCoords;
    sget-object v28, Landroid/view/MotionEvent;->gSharedTempPointerIndexMap:[I

    .line 3186
    .local v28, map:[I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v3}, Landroid/view/MotionEvent;->nativeGetAction(I)I

    move-result v31

    .line 3187
    .local v31, oldAction:I
    move/from16 v0, v31

    and-int/lit16 v0, v0, 0xff

    move/from16 v32, v0

    .line 3188
    .local v32, oldActionMasked:I
    const v3, 0xff00

    and-int v3, v3, v31

    shr-int/lit8 v33, v3, 0x8

    .line 3190
    .local v33, oldActionPointerIndex:I
    const/16 v29, -0x1

    .line 3191
    .local v29, newActionPointerIndex:I
    const/16 v19, 0x0

    .line 3192
    .local v19, newPointerCount:I
    const/16 v30, 0x0

    .line 3193
    .local v30, newIdBits:I
    const/16 v26, 0x0

    .local v26, i:I
    :goto_0
    move/from16 v0, v26

    move/from16 v1, v34

    if-ge v0, v1, :cond_2

    .line 3194
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/MotionEvent;->mNativePtr:I

    aget-object v4, v20, v19

    move/from16 v0, v26

    invoke-static {v3, v0, v4}, Landroid/view/MotionEvent;->nativeGetPointerProperties(IILandroid/view/MotionEvent$PointerProperties;)V

    .line 3195
    const/4 v3, 0x1

    aget-object v4, v20, v19

    iget v4, v4, Landroid/view/MotionEvent$PointerProperties;->id:I

    shl-int v27, v3, v4

    .line 3196
    .local v27, idBit:I
    and-int v3, v27, p1

    if-eqz v3, :cond_1

    .line 3197
    move/from16 v0, v26

    move/from16 v1, v33

    if-ne v0, v1, :cond_0

    .line 3198
    move/from16 v29, v19

    .line 3200
    :cond_0
    aput v26, v28, v19

    .line 3201
    add-int/lit8 v19, v19, 0x1

    .line 3202
    or-int v30, v30, v27

    .line 3193
    :cond_1
    add-int/lit8 v26, v26, 0x1

    goto :goto_0

    .line 3206
    .end local v27           #idBit:I
    :cond_2
    if-nez v19, :cond_3

    .line 3207
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "idBits did not match any ids in the event"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3253
    .end local v19           #newPointerCount:I
    .end local v20           #pp:[Landroid/view/MotionEvent$PointerProperties;
    .end local v21           #pc:[Landroid/view/MotionEvent$PointerCoords;
    .end local v26           #i:I
    .end local v28           #map:[I
    .end local v29           #newActionPointerIndex:I
    .end local v30           #newIdBits:I
    .end local v31           #oldAction:I
    .end local v32           #oldActionMasked:I
    .end local v33           #oldActionPointerIndex:I
    .end local v34           #oldPointerCount:I
    :catchall_0
    move-exception v3

    monitor-exit v35
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 3211
    .restart local v19       #newPointerCount:I
    .restart local v20       #pp:[Landroid/view/MotionEvent$PointerProperties;
    .restart local v21       #pc:[Landroid/view/MotionEvent$PointerCoords;
    .restart local v26       #i:I
    .restart local v28       #map:[I
    .restart local v29       #newActionPointerIndex:I
    .restart local v30       #newIdBits:I
    .restart local v31       #oldAction:I
    .restart local v32       #oldActionMasked:I
    .restart local v33       #oldActionPointerIndex:I
    .restart local v34       #oldPointerCount:I
    :cond_3
    const/4 v3, 0x5

    move/from16 v0, v32

    if-eq v0, v3, :cond_4

    const/4 v3, 0x6

    move/from16 v0, v32

    if-ne v0, v3, :cond_8

    .line 3212
    :cond_4
    if-gez v29, :cond_5

    .line 3214
    const/4 v6, 0x2

    .line 3229
    .local v6, newAction:I
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v3}, Landroid/view/MotionEvent;->nativeGetHistorySize(I)I

    move-result v25

    .line 3230
    .local v25, historySize:I
    const/16 v23, 0x0

    .local v23, h:I
    :goto_2
    move/from16 v0, v23

    move/from16 v1, v25

    if-gt v0, v1, :cond_c

    .line 3231
    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    const/high16 v24, -0x8000

    .line 3233
    .local v24, historyPos:I
    :goto_3
    const/16 v26, 0x0

    :goto_4
    move/from16 v0, v26

    move/from16 v1, v19

    if-ge v0, v1, :cond_a

    .line 3234
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/MotionEvent;->mNativePtr:I

    aget v4, v28, v26

    aget-object v5, v21, v26

    move/from16 v0, v24

    invoke-static {v3, v4, v0, v5}, Landroid/view/MotionEvent;->nativeGetPointerCoords(IIILandroid/view/MotionEvent$PointerCoords;)V

    .line 3233
    add-int/lit8 v26, v26, 0x1

    goto :goto_4

    .line 3215
    .end local v6           #newAction:I
    .end local v23           #h:I
    .end local v24           #historyPos:I
    .end local v25           #historySize:I
    :cond_5
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_7

    .line 3217
    const/4 v3, 0x5

    move/from16 v0, v32

    if-ne v0, v3, :cond_6

    const/4 v6, 0x0

    .restart local v6       #newAction:I
    :goto_5
    goto :goto_1

    .end local v6           #newAction:I
    :cond_6
    const/4 v6, 0x1

    goto :goto_5

    .line 3221
    :cond_7
    shl-int/lit8 v3, v29, 0x8

    or-int v6, v32, v3

    .restart local v6       #newAction:I
    goto :goto_1

    .line 3226
    .end local v6           #newAction:I
    :cond_8
    move/from16 v6, v31

    .restart local v6       #newAction:I
    goto :goto_1

    .restart local v23       #h:I
    .restart local v25       #historySize:I
    :cond_9
    move/from16 v24, v23

    .line 3231
    goto :goto_3

    .line 3237
    .restart local v24       #historyPos:I
    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/MotionEvent;->mNativePtr:I

    move/from16 v0, v24

    invoke-static {v3, v0}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(II)J

    move-result-wide v17

    .line 3238
    .local v17, eventTimeNanos:J
    if-nez v23, :cond_b

    .line 3239
    move-object/from16 v0, v22

    iget v3, v0, Landroid/view/MotionEvent;->mNativePtr:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v4}, Landroid/view/MotionEvent;->nativeGetDeviceId(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v5}, Landroid/view/MotionEvent;->nativeGetSource(I)I

    move-result v5

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v7}, Landroid/view/MotionEvent;->nativeGetFlags(I)I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v8}, Landroid/view/MotionEvent;->nativeGetEdgeFlags(I)I

    move-result v8

    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v9}, Landroid/view/MotionEvent;->nativeGetMetaState(I)I

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v10}, Landroid/view/MotionEvent;->nativeGetButtonState(I)I

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v11}, Landroid/view/MotionEvent;->nativeGetXOffset(I)F

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v12}, Landroid/view/MotionEvent;->nativeGetYOffset(I)F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v13}, Landroid/view/MotionEvent;->nativeGetXPrecision(I)F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v14}, Landroid/view/MotionEvent;->nativeGetYPrecision(I)F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v15}, Landroid/view/MotionEvent;->nativeGetDownTimeNanos(I)J

    move-result-wide v15

    invoke-static/range {v3 .. v21}, Landroid/view/MotionEvent;->nativeInitialize(IIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)I

    move-result v3

    move-object/from16 v0, v22

    iput v3, v0, Landroid/view/MotionEvent;->mNativePtr:I

    .line 3230
    :goto_6
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    .line 3249
    :cond_b
    move-object/from16 v0, v22

    iget v3, v0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v4, 0x0

    move-wide/from16 v0, v17

    move-object/from16 v2, v21

    invoke-static {v3, v0, v1, v2, v4}, Landroid/view/MotionEvent;->nativeAddBatch(IJ[Landroid/view/MotionEvent$PointerCoords;I)V

    goto :goto_6

    .line 3252
    .end local v17           #eventTimeNanos:J
    .end local v24           #historyPos:I
    :cond_c
    monitor-exit v35
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v22
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 3258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3259
    .local v1, msg:Ljava/lang/StringBuilder;
    const-string v3, "MotionEvent { action="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3261
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 3262
    .local v2, pointerCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 3263
    const-string v3, ", id["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3264
    const-string v3, ", x["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 3265
    const-string v3, ", y["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 3266
    const-string v3, ", toolType["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    invoke-static {v4}, Landroid/view/MotionEvent;->toolTypeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3270
    :cond_0
    const-string v3, ", buttonState="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    invoke-static {v4}, Landroid/view/MotionEvent;->buttonStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3271
    const-string v3, ", metaState="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3272
    const-string v3, ", flags=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3273
    const-string v3, ", edgeFlags=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3274
    const-string v3, ", pointerCount="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3275
    const-string v3, ", historySize="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3276
    const-string v3, ", eventTime="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3277
    const-string v3, ", downTime="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3278
    const-string v3, ", deviceId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3279
    const-string v3, ", source=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3280
    const-string v3, " }"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3281
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public final transform(Landroid/graphics/Matrix;)V
    .locals 2
    .parameter "matrix"

    .prologue
    .line 2989
    if-nez p1, :cond_0

    .line 2990
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "matrix must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2993
    :cond_0
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeTransform(ILandroid/graphics/Matrix;)V

    .line 2994
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 3433
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3434
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeWriteToParcel(ILandroid/os/Parcel;)V

    .line 3435
    return-void
.end method
