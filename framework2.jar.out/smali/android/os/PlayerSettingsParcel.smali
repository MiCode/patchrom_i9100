.class public Landroid/os/PlayerSettingsParcel;
.super Ljava/lang/Object;
.source "PlayerSettingsParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/PlayerSettingsParcel;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLAYER_SET_ATTR_MAX:B = 0x2t

.field public static final PLAYER_SET_EQUALIZER:B = 0x1t

.field public static final PLAYER_SET_EQUALIZER_OFF:B = 0x1t

.field public static final PLAYER_SET_EQUALIZER_ON:B = 0x2t

.field public static final PLAYER_SET_EQUALIZER_VAL_MAX:B = 0x2t

.field public static final PLAYER_SET_ILLEGAL:B = 0x0t

.field public static final PLAYER_SET_REPEAT:B = 0x2t

.field public static final PLAYER_SET_REPEAT_ALL:B = 0x3t

.field public static final PLAYER_SET_REPEAT_GROUP:B = 0x4t

.field public static final PLAYER_SET_REPEAT_OFF:B = 0x1t

.field public static final PLAYER_SET_REPEAT_SINGLE:B = 0x2t

.field public static final PLAYER_SET_REPEAT_VAL_MAX:B = 0x3t

.field public static final PLAYER_SET_SCAN:B = 0x4t

.field public static final PLAYER_SET_SCAN_ALL:B = 0x2t

.field public static final PLAYER_SET_SCAN_GROUP:B = 0x3t

.field public static final PLAYER_SET_SCAN_OFF:B = 0x1t

.field public static final PLAYER_SET_SCAN_VAL_MAX:B = 0x3t

.field public static final PLAYER_SET_SHUFFLE:B = 0x3t

.field public static final PLAYER_SET_SHUFFLE_ALL:B = 0x2t

.field public static final PLAYER_SET_SHUFFLE_GROUP:B = 0x3t

.field public static final PLAYER_SET_SHUFFLE_OFF:B = 0x1t

.field public static final PLAYER_SET_SHUFFLE_VAL_MAX:B = 0x2t

.field public static final REAPEAT_INDEX:B = 0x0t

.field public static final SHUFFLE_INDEX:B = 0x1t


# instance fields
.field public mAttrCount:B

.field public mAttrs:[B

.field public mCurVal:[B

.field public mValCount:B

.field public mVals:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 177
    new-instance v0, Landroid/os/PlayerSettingsParcel$1;

    invoke-direct {v0}, Landroid/os/PlayerSettingsParcel$1;-><init>()V

    sput-object v0, Landroid/os/PlayerSettingsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-byte v3, p0, Landroid/os/PlayerSettingsParcel;->mAttrCount:B

    .line 86
    iget-byte v0, p0, Landroid/os/PlayerSettingsParcel;->mAttrCount:B

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/os/PlayerSettingsParcel;->mAttrs:[B

    .line 87
    iget-byte v0, p0, Landroid/os/PlayerSettingsParcel;->mAttrCount:B

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/os/PlayerSettingsParcel;->mCurVal:[B

    .line 95
    iget-object v0, p0, Landroid/os/PlayerSettingsParcel;->mCurVal:[B

    aput-byte v2, v0, v1

    .line 96
    iget-object v0, p0, Landroid/os/PlayerSettingsParcel;->mCurVal:[B

    aput-byte v2, v0, v2

    .line 101
    iget-object v0, p0, Landroid/os/PlayerSettingsParcel;->mAttrs:[B

    aput-byte v3, v0, v1

    .line 102
    iget-object v0, p0, Landroid/os/PlayerSettingsParcel;->mAttrs:[B

    const/4 v1, 0x3

    aput-byte v1, v0, v2

    .line 104
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 187
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 188
    invoke-virtual {p0, p1}, Landroid/os/PlayerSettingsParcel;->readFromParcel(Landroid/os/Parcel;)V

    .line 189
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/PlayerSettingsParcel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/os/PlayerSettingsParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public checkRange()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 165
    iget-object v2, p0, Landroid/os/PlayerSettingsParcel;->mCurVal:[B

    aget-byte v2, v2, v0

    const/4 v3, 0x3

    if-le v2, v3, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v0

    .line 167
    :cond_1
    iget-object v2, p0, Landroid/os/PlayerSettingsParcel;->mCurVal:[B

    aget-byte v2, v2, v1

    const/4 v3, 0x2

    if-gt v2, v3, :cond_0

    move v0, v1

    .line 174
    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public getAvailable(B)V
    .locals 5
    .parameter "attrId"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 107
    packed-switch p1, :pswitch_data_0

    .line 110
    iput-byte v3, p0, Landroid/os/PlayerSettingsParcel;->mValCount:B

    .line 141
    :goto_0
    return-void

    .line 113
    :pswitch_0
    iput-byte v2, p0, Landroid/os/PlayerSettingsParcel;->mValCount:B

    .line 114
    iget-byte v0, p0, Landroid/os/PlayerSettingsParcel;->mValCount:B

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/os/PlayerSettingsParcel;->mVals:[B

    .line 115
    iget-object v0, p0, Landroid/os/PlayerSettingsParcel;->mVals:[B

    aput-byte v1, v0, v3

    .line 116
    iget-object v0, p0, Landroid/os/PlayerSettingsParcel;->mVals:[B

    aput-byte v2, v0, v1

    goto :goto_0

    .line 119
    :pswitch_1
    iput-byte v4, p0, Landroid/os/PlayerSettingsParcel;->mValCount:B

    .line 120
    iget-byte v0, p0, Landroid/os/PlayerSettingsParcel;->mValCount:B

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/os/PlayerSettingsParcel;->mVals:[B

    .line 121
    iget-object v0, p0, Landroid/os/PlayerSettingsParcel;->mVals:[B

    aput-byte v1, v0, v3

    .line 122
    iget-object v0, p0, Landroid/os/PlayerSettingsParcel;->mVals:[B

    aput-byte v2, v0, v1

    .line 123
    iget-object v0, p0, Landroid/os/PlayerSettingsParcel;->mVals:[B

    aput-byte v4, v0, v2

    goto :goto_0

    .line 127
    :pswitch_2
    iput-byte v2, p0, Landroid/os/PlayerSettingsParcel;->mValCount:B

    .line 128
    iget-byte v0, p0, Landroid/os/PlayerSettingsParcel;->mValCount:B

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/os/PlayerSettingsParcel;->mVals:[B

    .line 129
    iget-object v0, p0, Landroid/os/PlayerSettingsParcel;->mVals:[B

    aput-byte v1, v0, v3

    .line 130
    iget-object v0, p0, Landroid/os/PlayerSettingsParcel;->mVals:[B

    aput-byte v2, v0, v1

    goto :goto_0

    .line 134
    :pswitch_3
    iput-byte v4, p0, Landroid/os/PlayerSettingsParcel;->mValCount:B

    .line 135
    iget-byte v0, p0, Landroid/os/PlayerSettingsParcel;->mValCount:B

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/os/PlayerSettingsParcel;->mVals:[B

    .line 136
    iget-object v0, p0, Landroid/os/PlayerSettingsParcel;->mVals:[B

    aput-byte v1, v0, v3

    .line 137
    iget-object v0, p0, Landroid/os/PlayerSettingsParcel;->mVals:[B

    aput-byte v2, v0, v1

    .line 138
    iget-object v0, p0, Landroid/os/PlayerSettingsParcel;->mVals:[B

    aput-byte v4, v0, v2

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getCurrent(II)V
    .locals 3
    .parameter "shuffle"
    .parameter "repeat"

    .prologue
    .line 145
    iget-object v0, p0, Landroid/os/PlayerSettingsParcel;->mCurVal:[B

    const/4 v1, 0x0

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 146
    iget-object v0, p0, Landroid/os/PlayerSettingsParcel;->mCurVal:[B

    const/4 v1, 0x1

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 147
    return-void
.end method

.method public getRepeat()B
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Landroid/os/PlayerSettingsParcel;->mCurVal:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public getShuffle()B
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Landroid/os/PlayerSettingsParcel;->mCurVal:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, i:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Landroid/os/PlayerSettingsParcel;->mAttrCount:B

    .line 213
    iget-byte v1, p0, Landroid/os/PlayerSettingsParcel;->mAttrCount:B

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/os/PlayerSettingsParcel;->mAttrs:[B

    .line 214
    iget-byte v1, p0, Landroid/os/PlayerSettingsParcel;->mAttrCount:B

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/os/PlayerSettingsParcel;->mCurVal:[B

    .line 215
    const/4 v0, 0x0

    :goto_0
    iget-byte v1, p0, Landroid/os/PlayerSettingsParcel;->mAttrCount:B

    if-ge v0, v1, :cond_0

    .line 216
    iget-object v1, p0, Landroid/os/PlayerSettingsParcel;->mAttrs:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    aput-byte v2, v1, v0

    .line 217
    iget-object v1, p0, Landroid/os/PlayerSettingsParcel;->mCurVal:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    aput-byte v2, v1, v0

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Landroid/os/PlayerSettingsParcel;->mValCount:B

    .line 221
    iget-byte v1, p0, Landroid/os/PlayerSettingsParcel;->mValCount:B

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/os/PlayerSettingsParcel;->mVals:[B

    .line 222
    const/4 v0, 0x0

    :goto_1
    iget-byte v1, p0, Landroid/os/PlayerSettingsParcel;->mValCount:B

    if-ge v0, v1, :cond_1

    .line 223
    iget-object v1, p0, Landroid/os/PlayerSettingsParcel;->mVals:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    aput-byte v2, v1, v0

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 224
    :cond_1
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "in"
    .parameter "count"

    .prologue
    .line 228
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 229
    invoke-virtual {p0, p1}, Landroid/os/PlayerSettingsParcel;->readFromParcel(Landroid/os/Parcel;)V

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, i:I
    iget-byte v1, p0, Landroid/os/PlayerSettingsParcel;->mAttrCount:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 194
    const/4 v0, 0x0

    :goto_0
    iget-byte v1, p0, Landroid/os/PlayerSettingsParcel;->mAttrCount:B

    if-ge v0, v1, :cond_0

    .line 195
    iget-object v1, p0, Landroid/os/PlayerSettingsParcel;->mAttrs:[B

    aget-byte v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 196
    iget-object v1, p0, Landroid/os/PlayerSettingsParcel;->mCurVal:[B

    aget-byte v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_0
    iget-byte v1, p0, Landroid/os/PlayerSettingsParcel;->mValCount:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 200
    const/4 v0, 0x0

    :goto_1
    iget-byte v1, p0, Landroid/os/PlayerSettingsParcel;->mValCount:B

    if-ge v0, v1, :cond_1

    .line 201
    iget-object v1, p0, Landroid/os/PlayerSettingsParcel;->mVals:[B

    aget-byte v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 202
    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "count"

    .prologue
    .line 206
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 207
    invoke-virtual {p0, p1}, Landroid/os/PlayerSettingsParcel;->writeToParcel(Landroid/os/Parcel;)V

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_0
    return-void
.end method
