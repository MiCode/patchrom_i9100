.class public final Lcom/sec/android/facedetection/SecFace;
.super Landroid/hardware/Camera$Face;
.source "SecFace.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/facedetection/SecFace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public orientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 185
    new-instance v0, Lcom/sec/android/facedetection/SecFace$1;

    invoke-direct {v0}, Lcom/sec/android/facedetection/SecFace$1;-><init>()V

    sput-object v0, Lcom/sec/android/facedetection/SecFace;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/hardware/Camera$Face;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0
    .parameter "_rect"
    .parameter "_id"
    .parameter "_score"
    .parameter "_leftEye"
    .parameter "_rightEye"
    .parameter "_mouth"

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/hardware/Camera$Face;-><init>()V

    .line 52
    iput-object p1, p0, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    .line 53
    iput p2, p0, Landroid/hardware/Camera$Face;->id:I

    .line 54
    iput p3, p0, Landroid/hardware/Camera$Face;->score:I

    .line 55
    iput-object p4, p0, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    .line 56
    iput-object p5, p0, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    .line 57
    iput-object p6, p0, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    .line 58
    invoke-direct {p0}, Lcom/sec/android/facedetection/SecFace;->getOrientation()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/hardware/Camera$Face;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/hardware/Camera$Face;-><init>()V

    .line 26
    iget-object v0, p1, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    .line 27
    iget v0, p1, Landroid/hardware/Camera$Face;->id:I

    iput v0, p0, Landroid/hardware/Camera$Face;->id:I

    .line 28
    iget v0, p1, Landroid/hardware/Camera$Face;->score:I

    iput v0, p0, Landroid/hardware/Camera$Face;->score:I

    .line 29
    iget-object v0, p1, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iput-object v0, p0, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    .line 30
    iget-object v0, p1, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iput-object v0, p0, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    .line 31
    iget-object v0, p1, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    iput-object v0, p0, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    .line 32
    invoke-direct {p0}, Lcom/sec/android/facedetection/SecFace;->getOrientation()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/hardware/Camera$Face;-><init>()V

    .line 63
    invoke-virtual {p0, p1}, Lcom/sec/android/facedetection/SecFace;->readFromParcel(Landroid/os/Parcel;)V

    .line 64
    invoke-direct {p0}, Lcom/sec/android/facedetection/SecFace;->getOrientation()V

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/facedetection/SecFace;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/hardware/Camera$Face;-><init>()V

    .line 38
    iget-object v0, p1, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    .line 39
    iget v0, p1, Landroid/hardware/Camera$Face;->id:I

    iput v0, p0, Landroid/hardware/Camera$Face;->id:I

    .line 40
    iget v0, p1, Landroid/hardware/Camera$Face;->score:I

    iput v0, p0, Landroid/hardware/Camera$Face;->score:I

    .line 41
    iget-object v0, p1, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iput-object v0, p0, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    .line 42
    iget-object v0, p1, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iput-object v0, p0, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    .line 43
    iget-object v0, p1, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    iput-object v0, p0, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    .line 44
    iget v0, p1, Lcom/sec/android/facedetection/SecFace;->orientation:I

    iput v0, p0, Lcom/sec/android/facedetection/SecFace;->orientation:I

    .line 45
    return-void
.end method

.method private getOrientation()V
    .locals 19

    .prologue
    .line 69
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->x:I

    const/16 v16, -0x3e8

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->y:I

    const/16 v16, -0x3e8

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->x:I

    const/16 v16, -0x3e8

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->y:I

    const/16 v16, -0x3e8

    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    .line 76
    :cond_0
    const-wide/high16 v7, 0x3ff0

    .line 77
    .local v7, v1x:D
    const-wide/16 v9, 0x0

    .line 79
    .local v9, v1y:D
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-double v11, v15

    .line 80
    .local v11, v2x:D
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-double v13, v15

    .line 83
    .local v13, v2y:D
    mul-double v15, v11, v11

    mul-double v17, v13, v13

    add-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v15

    div-double/2addr v11, v15

    .line 84
    mul-double v15, v11, v11

    mul-double v17, v13, v13

    add-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v15

    div-double/2addr v13, v15

    .line 87
    mul-double v15, v7, v11

    mul-double v17, v9, v13

    add-double v3, v15, v17

    .line 89
    .local v3, dot:D
    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v5

    .line 90
    .local v5, theta:D
    const-wide v15, 0x4066800000000000L

    mul-double/2addr v15, v5

    const-wide v17, 0x400921fb54442d18L

    div-double v1, v15, v17

    .line 93
    .local v1, deg:D
    const-wide/16 v15, 0x0

    cmpl-double v15, v13, v15

    if-lez v15, :cond_1

    const-wide v15, 0x4076800000000000L

    sub-double v1, v15, v1

    .line 95
    :cond_1
    double-to-int v15, v1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/facedetection/SecFace;->orientation:I

    .line 99
    .end local v1           #deg:D
    .end local v3           #dot:D
    .end local v5           #theta:D
    .end local v7           #v1x:D
    .end local v9           #v1y:D
    .end local v11           #v2x:D
    .end local v13           #v2y:D
    :goto_0
    return-void

    .line 98
    :cond_2
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/facedetection/SecFace;->orientation:I

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 9
    .parameter "in"

    .prologue
    const/4 v8, 0x0

    const/16 v7, -0x7d0

    .line 152
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/Camera$Face;->score:I

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/Camera$Face;->id:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 159
    .local v0, x:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 161
    .local v1, y:I
    if-ne v0, v7, :cond_0

    if-ne v1, v7, :cond_0

    .line 162
    iput-object v8, p0, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    .line 166
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 169
    if-ne v0, v7, :cond_1

    if-ne v1, v7, :cond_1

    .line 170
    iput-object v8, p0, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    .line 174
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 177
    if-ne v0, v7, :cond_2

    if-ne v1, v7, :cond_2

    .line 178
    iput-object v8, p0, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    .line 182
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/android/facedetection/SecFace;->orientation:I

    .line 183
    return-void

    .line 164
    :cond_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    goto :goto_0

    .line 172
    :cond_1
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    goto :goto_1

    .line 180
    :cond_2
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    const/16 v1, -0x7d0

    .line 107
    iget-object v0, p0, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object v0, p0, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object v0, p0, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-object v0, p0, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget v0, p0, Landroid/hardware/Camera$Face;->score:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget v0, p0, Landroid/hardware/Camera$Face;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget-object v0, p0, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-object v0, p0, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    :goto_0
    iget-object v0, p0, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget-object v0, p0, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    :goto_1
    iget-object v0, p0, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-object v0, p0, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    :goto_2
    iget v0, p0, Lcom/sec/android/facedetection/SecFace;->orientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    return-void

    .line 121
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 143
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method
