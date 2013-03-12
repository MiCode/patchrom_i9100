.class public final Landroid/os/Parcel;
.super Ljava/lang/Object;
.source "Parcel.java"


# static fields
.field private static final DEBUG_RECYCLE:Z = false

.field private static final EX_BAD_PARCELABLE:I = -0x2

.field private static final EX_HAS_REPLY_HEADER:I = -0x80

.field private static final EX_ILLEGAL_ARGUMENT:I = -0x3

.field private static final EX_ILLEGAL_STATE:I = -0x5

.field private static final EX_NULL_POINTER:I = -0x4

.field private static final EX_SECURITY:I = -0x1

.field private static final POOL_SIZE:I = 0x6

.field public static final STRING_CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Parcel"

.field private static final VAL_BOOLEAN:I = 0x9

.field private static final VAL_BOOLEANARRAY:I = 0x17

.field private static final VAL_BUNDLE:I = 0x3

.field private static final VAL_BYTE:I = 0x14

.field private static final VAL_BYTEARRAY:I = 0xd

.field private static final VAL_CHARSEQUENCE:I = 0xa

.field private static final VAL_CHARSEQUENCEARRAY:I = 0x18

.field private static final VAL_DOUBLE:I = 0x8

.field private static final VAL_FLOAT:I = 0x7

.field private static final VAL_IBINDER:I = 0xf

.field private static final VAL_INTARRAY:I = 0x12

.field private static final VAL_INTEGER:I = 0x1

.field private static final VAL_LIST:I = 0xb

.field private static final VAL_LONG:I = 0x6

.field private static final VAL_LONGARRAY:I = 0x13

.field private static final VAL_MAP:I = 0x2

.field private static final VAL_NULL:I = -0x1

.field private static final VAL_OBJECTARRAY:I = 0x11

.field private static final VAL_PARCELABLE:I = 0x4

.field private static final VAL_PARCELABLEARRAY:I = 0x10

.field private static final VAL_SERIALIZABLE:I = 0x15

.field private static final VAL_SHORT:I = 0x5

.field private static final VAL_SPARSEARRAY:I = 0xc

.field private static final VAL_SPARSEBOOLEANARRAY:I = 0x16

.field private static final VAL_STRING:I = 0x0

.field private static final VAL_STRINGARRAY:I = 0xe

.field private static final mCreators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable$Creator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sHolderPool:[Landroid/os/Parcel;

.field private static final sOwnedPool:[Landroid/os/Parcel;


# instance fields
.field private mNativePtr:I

.field private mOwnsNativeParcelObject:Z

.field private mStack:Ljava/lang/RuntimeException;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 194
    new-array v0, v1, [Landroid/os/Parcel;

    sput-object v0, Landroid/os/Parcel;->sOwnedPool:[Landroid/os/Parcel;

    .line 195
    new-array v0, v1, [Landroid/os/Parcel;

    sput-object v0, Landroid/os/Parcel;->sHolderPool:[Landroid/os/Parcel;

    .line 274
    new-instance v0, Landroid/os/Parcel$1;

    invoke-direct {v0}, Landroid/os/Parcel$1;-><init>()V

    sput-object v0, Landroid/os/Parcel;->STRING_CREATOR:Landroid/os/Parcelable$Creator;

    .line 2158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .parameter "nativePtr"

    .prologue
    .line 2179
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2184
    invoke-direct {p0, p1}, Landroid/os/Parcel;->init(I)V

    .line 2185
    return-void
.end method

.method static native clearFileDescriptor(Ljava/io/FileDescriptor;)V
.end method

.method static native closeFileDescriptor(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private destroy()V
    .locals 1

    .prologue
    .line 2204
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    if-eqz v0, :cond_1

    .line 2205
    iget-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    if-eqz v0, :cond_0

    .line 2206
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeDestroy(I)V

    .line 2208
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/Parcel;->mNativePtr:I

    .line 2210
    :cond_1
    return-void
.end method

.method static native dupFileDescriptor(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private freeBuffer()V
    .locals 1

    .prologue
    .line 2198
    iget-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    if-eqz v0, :cond_0

    .line 2199
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeFreeBuffer(I)V

    .line 2201
    :cond_0
    return-void
.end method

.method private init(I)V
    .locals 1
    .parameter "nativePtr"

    .prologue
    .line 2188
    if-eqz p1, :cond_0

    .line 2189
    iput p1, p0, Landroid/os/Parcel;->mNativePtr:I

    .line 2190
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    .line 2195
    :goto_0
    return-void

    .line 2192
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->nativeCreate()I

    move-result v0

    iput v0, p0, Landroid/os/Parcel;->mNativePtr:I

    .line 2193
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    goto :goto_0
.end method

.method private static native nativeAppendFrom(IIII)V
.end method

.method private static native nativeCreate()I
.end method

.method private static native nativeCreateByteArray(I)[B
.end method

.method private static native nativeDataAvail(I)I
.end method

.method private static native nativeDataCapacity(I)I
.end method

.method private static native nativeDataPosition(I)I
.end method

.method private static native nativeDataSize(I)I
.end method

.method private static native nativeDestroy(I)V
.end method

.method private static native nativeEnforceInterface(ILjava/lang/String;)V
.end method

.method private static native nativeFreeBuffer(I)V
.end method

.method private static native nativeHasFileDescriptors(I)Z
.end method

.method private static native nativeMarshall(I)[B
.end method

.method private static native nativePushAllowFds(IZ)Z
.end method

.method private static native nativeReadDouble(I)D
.end method

.method private static native nativeReadFileDescriptor(I)Ljava/io/FileDescriptor;
.end method

.method private static native nativeReadFloat(I)F
.end method

.method private static native nativeReadInt(I)I
.end method

.method private static native nativeReadLong(I)J
.end method

.method private static native nativeReadString(I)Ljava/lang/String;
.end method

.method private static native nativeReadStrongBinder(I)Landroid/os/IBinder;
.end method

.method private static native nativeRestoreAllowFds(IZ)V
.end method

.method private static native nativeSetDataCapacity(II)V
.end method

.method private static native nativeSetDataPosition(II)V
.end method

.method private static native nativeSetDataSize(II)V
.end method

.method private static native nativeUnmarshall(I[BII)V
.end method

.method private static native nativeWriteByteArray(I[BII)V
.end method

.method private static native nativeWriteDouble(ID)V
.end method

.method private static native nativeWriteFileDescriptor(ILjava/io/FileDescriptor;)V
.end method

.method private static native nativeWriteFloat(IF)V
.end method

.method private static native nativeWriteInt(II)V
.end method

.method private static native nativeWriteInterfaceToken(ILjava/lang/String;)V
.end method

.method private static native nativeWriteLong(IJ)V
.end method

.method private static native nativeWriteString(ILjava/lang/String;)V
.end method

.method private static native nativeWriteStrongBinder(ILandroid/os/IBinder;)V
.end method

.method public static obtain()Landroid/os/Parcel;
    .locals 4

    .prologue
    .line 288
    sget-object v2, Landroid/os/Parcel;->sOwnedPool:[Landroid/os/Parcel;

    .line 289
    .local v2, pool:[Landroid/os/Parcel;
    monitor-enter v2

    .line 291
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v3, 0x6

    if-ge v0, v3, :cond_1

    .line 292
    :try_start_0
    aget-object v1, v2, v0

    .line 293
    .local v1, p:Landroid/os/Parcel;
    if-eqz v1, :cond_0

    .line 294
    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 298
    monitor-exit v2

    .line 302
    .end local v1           #p:Landroid/os/Parcel;
    :goto_1
    return-object v1

    .line 291
    .restart local v1       #p:Landroid/os/Parcel;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    .end local v1           #p:Landroid/os/Parcel;
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    new-instance v1, Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/os/Parcel;-><init>(I)V

    goto :goto_1

    .line 301
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method protected static final obtain(I)Landroid/os/Parcel;
    .locals 4
    .parameter "obj"

    .prologue
    .line 2161
    sget-object v2, Landroid/os/Parcel;->sHolderPool:[Landroid/os/Parcel;

    .line 2162
    .local v2, pool:[Landroid/os/Parcel;
    monitor-enter v2

    .line 2164
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v3, 0x6

    if-ge v0, v3, :cond_1

    .line 2165
    :try_start_0
    aget-object v1, v2, v0

    .line 2166
    .local v1, p:Landroid/os/Parcel;
    if-eqz v1, :cond_0

    .line 2167
    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 2171
    invoke-direct {v1, p0}, Landroid/os/Parcel;->init(I)V

    .line 2172
    monitor-exit v2

    .line 2176
    .end local v1           #p:Landroid/os/Parcel;
    :goto_1
    return-object v1

    .line 2164
    .restart local v1       #p:Landroid/os/Parcel;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2175
    .end local v1           #p:Landroid/os/Parcel;
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2176
    new-instance v1, Landroid/os/Parcel;

    invoke-direct {v1, p0}, Landroid/os/Parcel;-><init>(I)V

    goto :goto_1

    .line 2175
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method static native openFileDescriptor(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method private readArrayInternal([Ljava/lang/Object;ILjava/lang/ClassLoader;)V
    .locals 2
    .parameter "outVal"
    .parameter "N"
    .parameter "loader"

    .prologue
    .line 2244
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 2245
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 2247
    .local v1, value:Ljava/lang/Object;
    aput-object v1, p1, v0

    .line 2244
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2249
    .end local v1           #value:Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;)V
    .locals 1
    .parameter "outVal"
    .parameter "N"
    .parameter "loader"

    .prologue
    .line 2234
    :goto_0
    if-lez p2, :cond_0

    .line 2235
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    .line 2237
    .local v0, value:Ljava/lang/Object;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2238
    add-int/lit8 p2, p2, -0x1

    .line 2239
    goto :goto_0

    .line 2240
    .end local v0           #value:Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private readSparseArrayInternal(Landroid/util/SparseArray;ILjava/lang/ClassLoader;)V
    .locals 2
    .parameter "outVal"
    .parameter "N"
    .parameter "loader"

    .prologue
    .line 2253
    :goto_0
    if-lez p2, :cond_0

    .line 2254
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2255
    .local v0, key:I
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 2257
    .local v1, value:Ljava/lang/Object;
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2258
    add-int/lit8 p2, p2, -0x1

    .line 2259
    goto :goto_0

    .line 2260
    .end local v0           #key:I
    .end local v1           #value:Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private readSparseBooleanArrayInternal(Landroid/util/SparseBooleanArray;I)V
    .locals 4
    .parameter "outVal"
    .parameter "N"

    .prologue
    const/4 v2, 0x1

    .line 2264
    :goto_0
    if-lez p2, :cond_1

    .line 2265
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2266
    .local v0, key:I
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v2, :cond_0

    move v1, v2

    .line 2268
    .local v1, value:Z
    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 2269
    add-int/lit8 p2, p2, -0x1

    .line 2270
    goto :goto_0

    .line 2266
    .end local v1           #value:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 2271
    .end local v0           #key:I
    :cond_1
    return-void
.end method


# virtual methods
.method public final appendFrom(Landroid/os/Parcel;II)V
    .locals 2
    .parameter "parcel"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 428
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    iget v1, p1, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, v1, p2, p3}, Landroid/os/Parcel;->nativeAppendFrom(IIII)V

    .line 429
    return-void
.end method

.method public final createBinderArray()[Landroid/os/IBinder;
    .locals 4

    .prologue
    .line 968
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 969
    .local v0, N:I
    if-ltz v0, :cond_0

    .line 970
    new-array v2, v0, [Landroid/os/IBinder;

    .line 971
    .local v2, val:[Landroid/os/IBinder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 972
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    aput-object v3, v2, v1

    .line 971
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 976
    .end local v1           #i:I
    .end local v2           #val:[Landroid/os/IBinder;
    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method

.method public final createBinderArrayList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1807
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1808
    .local v0, N:I
    if-gez v0, :cond_1

    .line 1809
    const/4 v1, 0x0

    .line 1816
    :cond_0
    return-object v1

    .line 1811
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1812
    .local v1, l:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :goto_0
    if-lez v0, :cond_0

    .line 1813
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1814
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final createBooleanArray()[Z
    .locals 4

    .prologue
    .line 695
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 699
    .local v0, N:I
    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x2

    if-gt v0, v3, :cond_1

    .line 700
    new-array v2, v0, [Z

    .line 701
    .local v2, val:[Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 702
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    aput-boolean v3, v2, v1

    .line 701
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 702
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 706
    .end local v1           #i:I
    .end local v2           #val:[Z
    :cond_1
    const/4 v2, 0x0

    :cond_2
    return-object v2
.end method

.method public final createByteArray()[B
    .locals 1

    .prologue
    .line 1584
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeCreateByteArray(I)[B

    move-result-object v0

    return-object v0
.end method

.method public final createCharArray()[C
    .locals 4

    .prologue
    .line 734
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 735
    .local v0, N:I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x2

    if-gt v0, v3, :cond_0

    .line 736
    new-array v2, v0, [C

    .line 737
    .local v2, val:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 738
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 737
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 742
    .end local v1           #i:I
    .end local v2           #val:[C
    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method

.method public final createDoubleArray()[D
    .locals 5

    .prologue
    .line 880
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 882
    .local v0, N:I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x3

    if-gt v0, v3, :cond_0

    .line 883
    new-array v2, v0, [D

    .line 884
    .local v2, val:[D
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 885
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 884
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 889
    .end local v1           #i:I
    .end local v2           #val:[D
    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method

.method public final createFloatArray()[F
    .locals 4

    .prologue
    .line 843
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 845
    .local v0, N:I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x2

    if-gt v0, v3, :cond_0

    .line 846
    new-array v2, v0, [F

    .line 847
    .local v2, val:[F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 848
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    aput v3, v2, v1

    .line 847
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 852
    .end local v1           #i:I
    .end local v2           #val:[F
    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method

.method public final createIntArray()[I
    .locals 4

    .prologue
    .line 770
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 771
    .local v0, N:I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x2

    if-gt v0, v3, :cond_0

    .line 772
    new-array v2, v0, [I

    .line 773
    .local v2, val:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 774
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    .line 773
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 778
    .end local v1           #i:I
    .end local v2           #val:[I
    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method

.method public final createLongArray()[J
    .locals 5

    .prologue
    .line 806
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 808
    .local v0, N:I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x3

    if-gt v0, v3, :cond_0

    .line 809
    new-array v2, v0, [J

    .line 810
    .local v2, val:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 811
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 810
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 815
    .end local v1           #i:I
    .end local v2           #val:[J
    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method

.method public final createStringArray()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 917
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 918
    .local v0, N:I
    if-ltz v0, :cond_0

    .line 919
    new-array v2, v0, [Ljava/lang/String;

    .line 920
    .local v2, val:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 921
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 920
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 925
    .end local v1           #i:I
    .end local v2           #val:[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method

.method public final createStringArrayList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1783
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1784
    .local v0, N:I
    if-gez v0, :cond_1

    .line 1785
    const/4 v1, 0x0

    .line 1792
    :cond_0
    return-object v1

    .line 1787
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1788
    .local v1, l:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    if-lez v0, :cond_0

    .line 1789
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1790
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 1880
    .local p1, c:Landroid/os/Parcelable$Creator;,"Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1881
    .local v0, N:I
    if-gez v0, :cond_1

    .line 1882
    const/4 v2, 0x0

    .line 1890
    :cond_0
    return-object v2

    .line 1884
    :cond_1
    invoke-interface {p1, v0}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v2

    .line 1885
    .local v2, l:[Ljava/lang/Object;,"[TT;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1886
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1887
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    .line 1885
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, c:Landroid/os/Parcelable$Creator;,"Landroid/os/Parcelable$Creator<TT;>;"
    const/4 v2, 0x0

    .line 1720
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1721
    .local v0, N:I
    if-gez v0, :cond_1

    move-object v1, v2

    .line 1733
    :cond_0
    return-object v1

    .line 1724
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1725
    .local v1, l:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    :goto_0
    if-lez v0, :cond_0

    .line 1726
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1727
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1731
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1729
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final dataAvail()I
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeDataAvail(I)I

    move-result v0

    return v0
.end method

.method public final dataCapacity()I
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeDataCapacity(I)I

    move-result v0

    return v0
.end method

.method public final dataPosition()I
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeDataPosition(I)I

    move-result v0

    return v0
.end method

.method public final dataSize()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeDataSize(I)I

    move-result v0

    return v0
.end method

.method public final enforceInterface(Ljava/lang/String;)V
    .locals 1
    .parameter "interfaceName"

    .prologue
    .line 448
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/os/Parcel;->nativeEnforceInterface(ILjava/lang/String;)V

    .line 449
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2219
    invoke-direct {p0}, Landroid/os/Parcel;->destroy()V

    .line 2220
    return-void
.end method

.method public final hasFileDescriptors()Z
    .locals 1

    .prologue
    .line 435
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeHasFileDescriptors(I)Z

    move-result v0

    return v0
.end method

.method public final marshall()[B
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeMarshall(I)[B

    move-result-object v0

    return-object v0
.end method

.method public final pushAllowFds(Z)Z
    .locals 1
    .parameter "allowFds"

    .prologue
    .line 397
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/os/Parcel;->nativePushAllowFds(IZ)Z

    move-result v0

    return v0
.end method

.method public final readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;
    .locals 2
    .parameter "loader"

    .prologue
    .line 1666
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1667
    .local v0, N:I
    if-gez v0, :cond_0

    .line 1668
    const/4 v1, 0x0

    .line 1672
    :goto_0
    return-object v1

    .line 1670
    :cond_0
    new-array v1, v0, [Ljava/lang/Object;

    .line 1671
    .local v1, l:[Ljava/lang/Object;
    invoke-direct {p0, v1, v0, p1}, Landroid/os/Parcel;->readArrayInternal([Ljava/lang/Object;ILjava/lang/ClassLoader;)V

    goto :goto_0
.end method

.method public final readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;
    .locals 2
    .parameter "loader"

    .prologue
    .line 1650
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1651
    .local v0, N:I
    if-gez v0, :cond_0

    .line 1652
    const/4 v1, 0x0

    .line 1656
    :goto_0
    return-object v1

    .line 1654
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1655
    .local v1, l:Ljava/util/ArrayList;
    invoke-direct {p0, v1, v0, p1}, Landroid/os/Parcel;->readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;)V

    goto :goto_0
.end method

.method public final readBinderArray([Landroid/os/IBinder;)V
    .locals 4
    .parameter "val"

    .prologue
    .line 981
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 982
    .local v0, N:I
    array-length v2, p1

    if-ne v0, v2, :cond_0

    .line 983
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 984
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    aput-object v2, p1, v1

    .line 983
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 987
    .end local v1           #i:I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 989
    .restart local v1       #i:I
    :cond_1
    return-void
.end method

.method public final readBinderList(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1853
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1854
    .local v0, M:I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1855
    .local v1, N:I
    const/4 v2, 0x0

    .line 1856
    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    if-ge v2, v1, :cond_0

    .line 1857
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1856
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1859
    :cond_0
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1860
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1859
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1862
    :cond_1
    :goto_2
    if-ge v2, v0, :cond_2

    .line 1863
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1862
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1865
    :cond_2
    return-void
.end method

.method public final readBooleanArray([Z)V
    .locals 4
    .parameter "val"

    .prologue
    .line 711
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 712
    .local v0, N:I
    array-length v2, p1

    if-ne v0, v2, :cond_1

    .line 713
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 714
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    aput-boolean v2, p1, v1

    .line 713
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 714
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 717
    .end local v1           #i:I
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 719
    .restart local v1       #i:I
    :cond_2
    return-void
.end method

.method public final readBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1558
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;
    .locals 2
    .parameter "loader"

    .prologue
    .line 1568
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1569
    .local v1, length:I
    if-gez v1, :cond_1

    .line 1570
    const/4 v0, 0x0

    .line 1577
    :cond_0
    :goto_0
    return-object v0

    .line 1573
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Parcel;I)V

    .line 1574
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 1575
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_0
.end method

.method public final readByte()B
    .locals 1

    .prologue
    .line 1511
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method public final readByteArray([B)V
    .locals 4
    .parameter "val"

    .prologue
    const/4 v3, 0x0

    .line 1593
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1594
    .local v0, ba:[B
    array-length v1, v0

    array-length v2, p1

    if-ne v1, v2, :cond_0

    .line 1595
    array-length v1, v0

    invoke-static {v0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1599
    return-void

    .line 1597
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bad array lengths"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final readCharArray([C)V
    .locals 4
    .parameter "val"

    .prologue
    .line 747
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 748
    .local v0, N:I
    array-length v2, p1

    if-ne v0, v2, :cond_0

    .line 749
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 750
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, p1, v1

    .line 749
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 753
    .end local v1           #i:I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 755
    .restart local v1       #i:I
    :cond_1
    return-void
.end method

.method public final readCharSequence()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1481
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final readCharSequenceArray()[Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 1627
    const/4 v0, 0x0

    .line 1629
    .local v0, array:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1630
    .local v2, length:I
    if-ltz v2, :cond_0

    .line 1632
    new-array v0, v2, [Ljava/lang/CharSequence;

    .line 1634
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1636
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v1

    .line 1634
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1640
    .end local v1           #i:I
    :cond_0
    return-object v0
.end method

.method public final readDouble()D
    .locals 2

    .prologue
    .line 1466
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeReadDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readDoubleArray([D)V
    .locals 4
    .parameter "val"

    .prologue
    .line 894
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 895
    .local v0, N:I
    array-length v2, p1

    if-ne v0, v2, :cond_0

    .line 896
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 897
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    aput-wide v2, p1, v1

    .line 896
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 900
    .end local v1           #i:I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 902
    .restart local v1       #i:I
    :cond_1
    return-void
.end method

.method public final readException()V
    .locals 2

    .prologue
    .line 1376
    invoke-virtual {p0}, Landroid/os/Parcel;->readExceptionCode()I

    move-result v0

    .line 1377
    .local v0, code:I
    if-eqz v0, :cond_0

    .line 1378
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1379
    .local v1, msg:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->readException(ILjava/lang/String;)V

    .line 1381
    .end local v1           #msg:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public final readException(ILjava/lang/String;)V
    .locals 3
    .parameter "code"
    .parameter "msg"

    .prologue
    .line 1423
    packed-switch p1, :pswitch_data_0

    .line 1435
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown exception code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1425
    :pswitch_0
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1427
    :pswitch_1
    new-instance v0, Landroid/os/BadParcelableException;

    invoke-direct {v0, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1429
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1431
    :pswitch_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1433
    :pswitch_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1423
    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final readExceptionCode()I
    .locals 4

    .prologue
    .line 1397
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1398
    .local v0, code:I
    const/16 v2, -0x80

    if-ne v0, v2, :cond_0

    .line 1399
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1400
    .local v1, headerSize:I
    if-nez v1, :cond_1

    .line 1401
    const-string v2, "Parcel"

    const-string v3, "Unexpected zero-sized Parcel reply header."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    :goto_0
    const/4 v0, 0x0

    .line 1413
    .end local v0           #code:I
    .end local v1           #headerSize:I
    :cond_0
    return v0

    .line 1407
    .restart local v0       #code:I
    .restart local v1       #headerSize:I
    :cond_1
    invoke-static {p0}, Landroid/os/StrictMode;->readAndHandleBinderCallViolations(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method public final readFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 2

    .prologue
    .line 1495
    iget v1, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v1}, Landroid/os/Parcel;->nativeReadFileDescriptor(I)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 1496
    .local v0, fd:Ljava/io/FileDescriptor;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final readFloat()F
    .locals 1

    .prologue
    .line 1458
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeReadFloat(I)F

    move-result v0

    return v0
.end method

.method public final readFloatArray([F)V
    .locals 4
    .parameter "val"

    .prologue
    .line 857
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 858
    .local v0, N:I
    array-length v2, p1

    if-ne v0, v2, :cond_0

    .line 859
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 860
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    aput v2, p1, v1

    .line 859
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 863
    .end local v1           #i:I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 865
    .restart local v1       #i:I
    :cond_1
    return-void
.end method

.method public final readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;
    .locals 2
    .parameter "loader"

    .prologue
    .line 1543
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1544
    .local v0, N:I
    if-gez v0, :cond_0

    .line 1545
    const/4 v1, 0x0

    .line 1549
    :goto_0
    return-object v1

    .line 1547
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 1548
    .local v1, m:Ljava/util/HashMap;
    invoke-virtual {p0, v1, v0, p1}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;)V

    goto :goto_0
.end method

.method public final readInt()I
    .locals 1

    .prologue
    .line 1443
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeReadInt(I)I

    move-result v0

    return v0
.end method

.method public final readIntArray([I)V
    .locals 4
    .parameter "val"

    .prologue
    .line 783
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 784
    .local v0, N:I
    array-length v2, p1

    if-ne v0, v2, :cond_0

    .line 785
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 786
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, p1, v1

    .line 785
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 789
    .end local v1           #i:I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 791
    .restart local v1       #i:I
    :cond_1
    return-void
.end method

.method public final readList(Ljava/util/List;Ljava/lang/ClassLoader;)V
    .locals 1
    .parameter "outVal"
    .parameter "loader"

    .prologue
    .line 1530
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1531
    .local v0, N:I
    invoke-direct {p0, p1, v0, p2}, Landroid/os/Parcel;->readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;)V

    .line 1532
    return-void
.end method

.method public final readLong()J
    .locals 2

    .prologue
    .line 1450
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeReadLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final readLongArray([J)V
    .locals 4
    .parameter "val"

    .prologue
    .line 820
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 821
    .local v0, N:I
    array-length v2, p1

    if-ne v0, v2, :cond_0

    .line 822
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 823
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    aput-wide v2, p1, v1

    .line 822
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 826
    .end local v1           #i:I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 828
    .restart local v1       #i:I
    :cond_1
    return-void
.end method

.method public final readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V
    .locals 1
    .parameter "outVal"
    .parameter "loader"

    .prologue
    .line 1520
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1521
    .local v0, N:I
    invoke-virtual {p0, p1, v0, p2}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;)V

    .line 1522
    return-void
.end method

.method readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;)V
    .locals 2
    .parameter "outVal"
    .parameter "N"
    .parameter "loader"

    .prologue
    .line 2224
    :goto_0
    if-lez p2, :cond_0

    .line 2225
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    .line 2226
    .local v0, key:Ljava/lang/Object;
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 2227
    .local v1, value:Ljava/lang/Object;
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2228
    add-int/lit8 p2, p2, -0x1

    .line 2229
    goto :goto_0

    .line 2230
    .end local v0           #key:Ljava/lang/Object;
    .end local v1           #value:Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public final readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    .locals 10
    .parameter "loader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2049
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2050
    .local v5, name:Ljava/lang/String;
    if-nez v5, :cond_0

    .line 2103
    :goto_0
    return-object v6

    .line 2054
    :cond_0
    sget-object v7, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    monitor-enter v7

    .line 2055
    :try_start_0
    sget-object v6, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 2056
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator;>;"
    if-nez v4, :cond_1

    .line 2057
    new-instance v4, Ljava/util/HashMap;

    .end local v4           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2058
    .restart local v4       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator;>;"
    sget-object v6, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    invoke-virtual {v6, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2060
    :cond_1
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable$Creator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2061
    .local v1, creator:Landroid/os/Parcelable$Creator;,"Landroid/os/Parcelable$Creator<TT;>;"
    if-nez v1, :cond_4

    .line 2063
    if-nez p1, :cond_2

    :try_start_1
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2065
    .local v0, c:Ljava/lang/Class;
    :goto_1
    const-string v6, "CREATOR"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 2066
    .local v3, f:Ljava/lang/reflect/Field;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #creator:Landroid/os/Parcelable$Creator;,"Landroid/os/Parcelable$Creator<TT;>;"
    check-cast v1, Landroid/os/Parcelable$Creator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3

    .line 2090
    .restart local v1       #creator:Landroid/os/Parcelable$Creator;,"Landroid/os/Parcelable$Creator<TT;>;"
    if-nez v1, :cond_3

    .line 2091
    :try_start_2
    new-instance v6, Landroid/os/BadParcelableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parcelable protocol requires a Parcelable.Creator object called  CREATOR on class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2098
    .end local v0           #c:Ljava/lang/Class;
    .end local v1           #creator:Landroid/os/Parcelable$Creator;,"Landroid/os/Parcelable$Creator<TT;>;"
    .end local v3           #f:Ljava/lang/reflect/Field;
    .end local v4           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 2063
    .restart local v1       #creator:Landroid/os/Parcelable$Creator;,"Landroid/os/Parcelable$Creator<TT;>;"
    .restart local v4       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator;>;"
    :cond_2
    const/4 v6, 0x1

    :try_start_3
    invoke-static {v5, v6, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    goto :goto_1

    .line 2068
    .end local v1           #creator:Landroid/os/Parcelable$Creator;,"Landroid/os/Parcelable$Creator<TT;>;"
    :catch_0
    move-exception v2

    .line 2069
    .local v2, e:Ljava/lang/IllegalAccessException;
    :try_start_4
    const-string v6, "Parcel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Class not found when unmarshalling: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", e: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    new-instance v6, Landroid/os/BadParcelableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IllegalAccessException when unmarshalling: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2074
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    .line 2075
    .local v2, e:Ljava/lang/ClassNotFoundException;
    const-string v6, "Parcel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Class not found when unmarshalling: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", e: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    new-instance v6, Landroid/os/BadParcelableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ClassNotFoundException when unmarshalling: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2080
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v2

    .line 2081
    .local v2, e:Ljava/lang/ClassCastException;
    new-instance v6, Landroid/os/BadParcelableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parcelable protocol requires a Parcelable.Creator object called  CREATOR on class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2085
    .end local v2           #e:Ljava/lang/ClassCastException;
    :catch_3
    move-exception v2

    .line 2086
    .local v2, e:Ljava/lang/NoSuchFieldException;
    new-instance v6, Landroid/os/BadParcelableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parcelable protocol requires a Parcelable.Creator object called  CREATOR on class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2096
    .end local v2           #e:Ljava/lang/NoSuchFieldException;
    .restart local v0       #c:Ljava/lang/Class;
    .restart local v1       #creator:Landroid/os/Parcelable$Creator;,"Landroid/os/Parcelable$Creator<TT;>;"
    .restart local v3       #f:Ljava/lang/reflect/Field;
    :cond_3
    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2098
    .end local v0           #c:Ljava/lang/Class;
    .end local v3           #f:Ljava/lang/reflect/Field;
    :cond_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2100
    instance-of v6, v1, Landroid/os/Parcelable$ClassLoaderCreator;

    if-eqz v6, :cond_5

    .line 2101
    check-cast v1, Landroid/os/Parcelable$ClassLoaderCreator;

    .end local v1           #creator:Landroid/os/Parcelable$Creator;,"Landroid/os/Parcelable$Creator<TT;>;"
    invoke-interface {v1, p0, p1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Parcelable;

    goto/16 :goto_0

    .line 2103
    .restart local v1       #creator:Landroid/os/Parcelable$Creator;,"Landroid/os/Parcelable$Creator<TT;>;"
    :cond_5
    invoke-interface {v1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Parcelable;

    goto/16 :goto_0
.end method

.method public final readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;
    .locals 4
    .parameter "loader"

    .prologue
    .line 2113
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2114
    .local v0, N:I
    if-gez v0, :cond_1

    .line 2115
    const/4 v2, 0x0

    .line 2121
    :cond_0
    return-object v2

    .line 2117
    :cond_1
    new-array v2, v0, [Landroid/os/Parcelable;

    .line 2118
    .local v2, p:[Landroid/os/Parcelable;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2119
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    aput-object v3, v2, v1

    .line 2118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final readSerializable()Ljava/io/Serializable;
    .locals 9

    .prologue
    .line 2130
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2131
    .local v3, name:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 2135
    const/4 v6, 0x0

    .line 2142
    :goto_0
    return-object v6

    .line 2138
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 2139
    .local v5, serializedData:[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2141
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2142
    .local v4, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/Serializable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2143
    .end local v4           #ois:Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v2

    .line 2144
    .local v2, ioe:Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parcelable encountered IOException reading a Serializable object (name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 2147
    .end local v2           #ioe:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 2148
    .local v1, cnfe:Ljava/lang/ClassNotFoundException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parcelable encounteredClassNotFoundException reading a Serializable object (name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public final readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;
    .locals 2
    .parameter "loader"

    .prologue
    .line 1682
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1683
    .local v0, N:I
    if-gez v0, :cond_0

    .line 1684
    const/4 v1, 0x0

    .line 1688
    :goto_0
    return-object v1

    .line 1686
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 1687
    .local v1, sa:Landroid/util/SparseArray;
    invoke-direct {p0, v1, v0, p1}, Landroid/os/Parcel;->readSparseArrayInternal(Landroid/util/SparseArray;ILjava/lang/ClassLoader;)V

    goto :goto_0
.end method

.method public final readSparseBooleanArray()Landroid/util/SparseBooleanArray;
    .locals 2

    .prologue
    .line 1697
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1698
    .local v0, N:I
    if-gez v0, :cond_0

    .line 1699
    const/4 v1, 0x0

    .line 1703
    :goto_0
    return-object v1

    .line 1701
    :cond_0
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 1702
    .local v1, sa:Landroid/util/SparseBooleanArray;
    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->readSparseBooleanArrayInternal(Landroid/util/SparseBooleanArray;I)V

    goto :goto_0
.end method

.method public final readString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1473
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeReadString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readStringArray([Ljava/lang/String;)V
    .locals 4
    .parameter "val"

    .prologue
    .line 930
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 931
    .local v0, N:I
    array-length v2, p1

    if-ne v0, v2, :cond_0

    .line 932
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 933
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    .line 932
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 936
    .end local v1           #i:I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 938
    .restart local v1       #i:I
    :cond_1
    return-void
.end method

.method public final readStringArray()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 1606
    const/4 v0, 0x0

    .line 1608
    .local v0, array:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1609
    .local v2, length:I
    if-ltz v2, :cond_0

    .line 1611
    new-array v0, v2, [Ljava/lang/String;

    .line 1613
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1615
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 1613
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1619
    .end local v1           #i:I
    :cond_0
    return-object v0
.end method

.method public final readStringList(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1829
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1830
    .local v0, M:I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1831
    .local v1, N:I
    const/4 v2, 0x0

    .line 1832
    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    if-ge v2, v1, :cond_0

    .line 1833
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1832
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1835
    :cond_0
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1836
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1835
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1838
    :cond_1
    :goto_2
    if-ge v2, v0, :cond_2

    .line 1839
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1838
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1841
    :cond_2
    return-void
.end method

.method public final readStrongBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1488
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeReadStrongBinder(I)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public final readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1894
    .local p1, val:[Ljava/lang/Object;,"[TT;"
    .local p2, c:Landroid/os/Parcelable$Creator;,"Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1895
    .local v0, N:I
    array-length v2, p1

    if-ne v0, v2, :cond_1

    .line 1896
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1897
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1898
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v1

    .line 1896
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1900
    :cond_0
    const/4 v2, 0x0

    aput-object v2, p1, v1

    goto :goto_1

    .line 1904
    .end local v1           #i:I
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1906
    .restart local v1       #i:I
    :cond_2
    return-void
.end method

.method public final readTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1914
    .local p1, c:Landroid/os/Parcelable$Creator;,"Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .local p2, c:Landroid/os/Parcelable$Creator;,"Landroid/os/Parcelable$Creator<TT;>;"
    const/4 v4, 0x0

    .line 1749
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1750
    .local v0, M:I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1751
    .local v1, N:I
    const/4 v2, 0x0

    .line 1752
    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    if-ge v2, v1, :cond_1

    .line 1753
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1754
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1752
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1756
    :cond_0
    invoke-interface {p1, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1759
    :cond_1
    :goto_2
    if-ge v2, v1, :cond_3

    .line 1760
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1761
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1759
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1763
    :cond_2
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1766
    :cond_3
    :goto_4
    if-ge v2, v0, :cond_4

    .line 1767
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1766
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1769
    :cond_4
    return-void
.end method

.method public final readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 5
    .parameter "loader"

    .prologue
    const/4 v2, 0x1

    .line 1949
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1951
    .local v1, type:I
    packed-switch v1, :pswitch_data_0

    .line 2031
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    add-int/lit8 v0, v2, -0x4

    .line 2032
    .local v0, off:I
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parcel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Unmarshalling unknown type code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at offset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1953
    .end local v0           #off:I
    :pswitch_0
    const/4 v2, 0x0

    .line 2028
    :goto_0
    return-object v2

    .line 1956
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1959
    :pswitch_2
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 1962
    :pswitch_3
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    goto :goto_0

    .line 1965
    :pswitch_4
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    goto :goto_0

    .line 1968
    :pswitch_5
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-short v2, v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    goto :goto_0

    .line 1971
    :pswitch_6
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    .line 1974
    :pswitch_7
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0

    .line 1977
    :pswitch_8
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_0

    .line 1980
    :pswitch_9
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_0

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1983
    :pswitch_a
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 1986
    :pswitch_b
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    .line 1989
    :pswitch_c
    invoke-virtual {p0}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v2

    goto :goto_0

    .line 1992
    :pswitch_d
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    goto :goto_0

    .line 1995
    :pswitch_e
    invoke-virtual {p0}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1998
    :pswitch_f
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 2001
    :pswitch_10
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    .line 2004
    :pswitch_11
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 2007
    :pswitch_12
    invoke-virtual {p0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    goto :goto_0

    .line 2010
    :pswitch_13
    invoke-virtual {p0}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    goto :goto_0

    .line 2013
    :pswitch_14
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    goto/16 :goto_0

    .line 2016
    :pswitch_15
    invoke-virtual {p0}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    goto/16 :goto_0

    .line 2019
    :pswitch_16
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v2

    goto/16 :goto_0

    .line 2022
    :pswitch_17
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object v2

    goto/16 :goto_0

    .line 2025
    :pswitch_18
    invoke-virtual {p0}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v2

    goto/16 :goto_0

    .line 2028
    :pswitch_19
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v2

    goto/16 :goto_0

    .line 1951
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_19
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_17
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_16
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_18
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method public final recycle()V
    .locals 3

    .prologue
    .line 311
    invoke-direct {p0}, Landroid/os/Parcel;->freeBuffer()V

    .line 314
    iget-boolean v2, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    if-eqz v2, :cond_0

    .line 315
    sget-object v1, Landroid/os/Parcel;->sOwnedPool:[Landroid/os/Parcel;

    .line 321
    .local v1, pool:[Landroid/os/Parcel;
    :goto_0
    monitor-enter v1

    .line 322
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v2, 0x6

    if-ge v0, v2, :cond_2

    .line 323
    :try_start_0
    aget-object v2, v1, v0

    if-nez v2, :cond_1

    .line 324
    aput-object p0, v1, v0

    .line 325
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    :goto_2
    return-void

    .line 317
    .end local v0           #i:I
    .end local v1           #pool:[Landroid/os/Parcel;
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Landroid/os/Parcel;->mNativePtr:I

    .line 318
    sget-object v1, Landroid/os/Parcel;->sHolderPool:[Landroid/os/Parcel;

    .restart local v1       #pool:[Landroid/os/Parcel;
    goto :goto_0

    .line 322
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 328
    :cond_2
    :try_start_1
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public final restoreAllowFds(Z)V
    .locals 1
    .parameter "lastValue"

    .prologue
    .line 402
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/os/Parcel;->nativeRestoreAllowFds(IZ)V

    .line 403
    return-void
.end method

.method public final setDataCapacity(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 392
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/os/Parcel;->nativeSetDataCapacity(II)V

    .line 393
    return-void
.end method

.method public final setDataPosition(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 381
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/os/Parcel;->nativeSetDataPosition(II)V

    .line 382
    return-void
.end method

.method public final setDataSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 372
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/os/Parcel;->nativeSetDataSize(II)V

    .line 373
    return-void
.end method

.method public final unmarshall([BII)V
    .locals 1
    .parameter "data"
    .parameter "offest"
    .parameter "length"

    .prologue
    .line 424
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1, p2, p3}, Landroid/os/Parcel;->nativeUnmarshall(I[BII)V

    .line 425
    return-void
.end method

.method public final writeArray([Ljava/lang/Object;)V
    .locals 3
    .parameter "val"

    .prologue
    .line 633
    if-nez p1, :cond_1

    .line 634
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    :cond_0
    return-void

    .line 637
    :cond_1
    array-length v0, p1

    .line 638
    .local v0, N:I
    const/4 v1, 0x0

    .line 639
    .local v1, i:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 640
    :goto_0
    if-ge v1, v0, :cond_0

    .line 641
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 642
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final writeBinderArray([Landroid/os/IBinder;)V
    .locals 3
    .parameter "val"

    .prologue
    .line 941
    if-eqz p1, :cond_0

    .line 942
    array-length v0, p1

    .line 943
    .local v0, N:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 944
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 945
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 944
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 948
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 950
    :cond_1
    return-void
.end method

.method public final writeBinderList(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1062
    .local p1, val:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    if-nez p1, :cond_1

    .line 1063
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1073
    :cond_0
    return-void

    .line 1066
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1067
    .local v0, N:I
    const/4 v1, 0x0

    .line 1068
    .local v1, i:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1069
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1070
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1071
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final writeBooleanArray([Z)V
    .locals 3
    .parameter "val"

    .prologue
    .line 683
    if-eqz p1, :cond_1

    .line 684
    array-length v0, p1

    .line 685
    .local v0, N:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 686
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 687
    aget-boolean v2, p1, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 686
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 687
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 690
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_1
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 692
    :cond_2
    return-void
.end method

.method public final writeBundle(Landroid/os/Bundle;)V
    .locals 1
    .parameter "val"

    .prologue
    .line 600
    if-nez p1, :cond_0

    .line 601
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 606
    :goto_0
    return-void

    .line 605
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public final writeByte(B)V
    .locals 0
    .parameter "val"

    .prologue
    .line 560
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 561
    return-void
.end method

.method public final writeByteArray([B)V
    .locals 2
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 457
    if-eqz p1, :cond_0

    array-length v0, p1

    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Landroid/os/Parcel;->writeByteArray([BII)V

    .line 458
    return-void

    :cond_0
    move v0, v1

    .line 457
    goto :goto_0
.end method

.method public final writeByteArray([BII)V
    .locals 1
    .parameter "b"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 468
    if-nez p1, :cond_0

    .line 469
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    :goto_0
    return-void

    .line 472
    :cond_0
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 473
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1, p2, p3}, Landroid/os/Parcel;->nativeWriteByteArray(I[BII)V

    goto :goto_0
.end method

.method public final writeCharArray([C)V
    .locals 3
    .parameter "val"

    .prologue
    .line 722
    if-eqz p1, :cond_0

    .line 723
    array-length v0, p1

    .line 724
    .local v0, N:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 725
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 726
    aget-char v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 725
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 729
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 731
    :cond_1
    return-void
.end method

.method public final writeCharSequence(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "val"

    .prologue
    .line 522
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 523
    return-void
.end method

.method public final writeCharSequenceArray([Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "val"

    .prologue
    .line 956
    if-eqz p1, :cond_0

    .line 957
    array-length v0, p1

    .line 958
    .local v0, N:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 959
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 960
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 959
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 963
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 965
    :cond_1
    return-void
.end method

.method public final writeDouble(D)V
    .locals 1
    .parameter "val"

    .prologue
    .line 505
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1, p2}, Landroid/os/Parcel;->nativeWriteDouble(ID)V

    .line 506
    return-void
.end method

.method public final writeDoubleArray([D)V
    .locals 4
    .parameter "val"

    .prologue
    .line 868
    if-eqz p1, :cond_0

    .line 869
    array-length v0, p1

    .line 870
    .local v0, N:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 871
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 872
    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 871
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 875
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 877
    :cond_1
    return-void
.end method

.method public final writeException(Ljava/lang/Exception;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 1308
    const/4 v0, 0x0

    .line 1309
    .local v0, code:I
    instance-of v1, p1, Ljava/lang/SecurityException;

    if-eqz v1, :cond_1

    .line 1310
    const/4 v0, -0x1

    .line 1320
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1321
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    .line 1322
    if-nez v0, :cond_6

    .line 1323
    instance-of v1, p1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_5

    .line 1324
    check-cast p1, Ljava/lang/RuntimeException;

    .end local p1
    throw p1

    .line 1311
    .restart local p1
    :cond_1
    instance-of v1, p1, Landroid/os/BadParcelableException;

    if-eqz v1, :cond_2

    .line 1312
    const/4 v0, -0x2

    goto :goto_0

    .line 1313
    :cond_2
    instance-of v1, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v1, :cond_3

    .line 1314
    const/4 v0, -0x3

    goto :goto_0

    .line 1315
    :cond_3
    instance-of v1, p1, Ljava/lang/NullPointerException;

    if-eqz v1, :cond_4

    .line 1316
    const/4 v0, -0x4

    goto :goto_0

    .line 1317
    :cond_4
    instance-of v1, p1, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_0

    .line 1318
    const/4 v0, -0x5

    goto :goto_0

    .line 1326
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1328
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1329
    return-void
.end method

.method public final writeFileDescriptor(Ljava/io/FileDescriptor;)V
    .locals 1
    .parameter "val"

    .prologue
    .line 552
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/os/Parcel;->nativeWriteFileDescriptor(ILjava/io/FileDescriptor;)V

    .line 553
    return-void
.end method

.method public final writeFloat(F)V
    .locals 1
    .parameter "val"

    .prologue
    .line 497
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/os/Parcel;->nativeWriteFloat(IF)V

    .line 498
    return-void
.end method

.method public final writeFloatArray([F)V
    .locals 3
    .parameter "val"

    .prologue
    .line 831
    if-eqz p1, :cond_0

    .line 832
    array-length v0, p1

    .line 833
    .local v0, N:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 834
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 835
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 834
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 838
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 840
    :cond_1
    return-void
.end method

.method public final writeInt(I)V
    .locals 1
    .parameter "val"

    .prologue
    .line 481
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/os/Parcel;->nativeWriteInt(II)V

    .line 482
    return-void
.end method

.method public final writeIntArray([I)V
    .locals 3
    .parameter "val"

    .prologue
    .line 758
    if-eqz p1, :cond_0

    .line 759
    array-length v0, p1

    .line 760
    .local v0, N:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 761
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 762
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 761
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 765
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 767
    :cond_1
    return-void
.end method

.method public final writeInterfaceToken(Ljava/lang/String;)V
    .locals 1
    .parameter "interfaceName"

    .prologue
    .line 444
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/os/Parcel;->nativeWriteInterfaceToken(ILjava/lang/String;)V

    .line 445
    return-void
.end method

.method public final writeList(Ljava/util/List;)V
    .locals 3
    .parameter "val"

    .prologue
    .line 614
    if-nez p1, :cond_1

    .line 615
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 625
    :cond_0
    return-void

    .line 618
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 619
    .local v0, N:I
    const/4 v1, 0x0

    .line 620
    .local v1, i:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 621
    :goto_0
    if-ge v1, v0, :cond_0

    .line 622
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 623
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final writeLong(J)V
    .locals 1
    .parameter "val"

    .prologue
    .line 489
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1, p2}, Landroid/os/Parcel;->nativeWriteLong(IJ)V

    .line 490
    return-void
.end method

.method public final writeLongArray([J)V
    .locals 4
    .parameter "val"

    .prologue
    .line 794
    if-eqz p1, :cond_0

    .line 795
    array-length v0, p1

    .line 796
    .local v0, N:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 797
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 798
    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 797
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 801
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 803
    :cond_1
    return-void
.end method

.method public final writeMap(Ljava/util/Map;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 575
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeMapInternal(Ljava/util/Map;)V

    .line 576
    return-void
.end method

.method writeMapInternal(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 583
    .local p1, val:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_1

    .line 584
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 593
    :cond_0
    return-void

    .line 587
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 588
    .local v1, entries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 589
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 590
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 591
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final writeNoException()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1352
    invoke-static {}, Landroid/os/StrictMode;->hasGatheredViolations()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1353
    const/16 v2, -0x80

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1354
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 1355
    .local v1, sizePosition:I
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1356
    invoke-static {p0}, Landroid/os/StrictMode;->writeGatheredViolationsToParcel(Landroid/os/Parcel;)V

    .line 1357
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 1358
    .local v0, payloadPosition:I
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1359
    sub-int v2, v0, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1360
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1364
    .end local v0           #payloadPosition:I
    .end local v1           #sizePosition:I
    :goto_0
    return-void

    .line 1362
    :cond_0
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public final writeParcelable(Landroid/os/Parcelable;I)V
    .locals 2
    .parameter "p"
    .parameter "parcelableFlags"

    .prologue
    .line 1248
    if-nez p1, :cond_0

    .line 1249
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1255
    :goto_0
    return-void

    .line 1252
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1253
    .local v0, name:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1254
    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public final writeParcelableArray([Landroid/os/Parcelable;I)V
    .locals 3
    .parameter
    .parameter "parcelableFlags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([TT;I)V"
        }
    .end annotation

    .prologue
    .line 1932
    .local p1, value:[Landroid/os/Parcelable;,"[TT;"
    if-eqz p1, :cond_0

    .line 1933
    array-length v0, p1

    .line 1934
    .local v0, N:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1935
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1936
    aget-object v2, p1, v1

    invoke-virtual {p0, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1935
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1939
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1941
    :cond_1
    return-void
.end method

.method public final writeSerializable(Ljava/io/Serializable;)V
    .locals 7
    .parameter "s"

    .prologue
    .line 1264
    if-nez p1, :cond_0

    .line 1265
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1283
    :goto_0
    return-void

    .line 1268
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1269
    .local v2, name:Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1271
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1273
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1274
    .local v3, oos:Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1275
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 1277
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1278
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v1

    .line 1279
    .local v1, ioe:Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parcelable encountered IOException writing serializable object (name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public final writeSparseArray(Landroid/util/SparseArray;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 653
    .local p1, val:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Object;>;"
    if-nez p1, :cond_1

    .line 654
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 665
    :cond_0
    return-void

    .line 657
    :cond_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 658
    .local v0, N:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 659
    const/4 v1, 0x0

    .line 660
    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 661
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 662
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 663
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V
    .locals 3
    .parameter "val"

    .prologue
    .line 668
    if-nez p1, :cond_1

    .line 669
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 680
    :cond_0
    return-void

    .line 672
    :cond_1
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 673
    .local v0, N:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 674
    const/4 v1, 0x0

    .line 675
    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 676
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 677
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 678
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 677
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public final writeString(Ljava/lang/String;)V
    .locals 1
    .parameter "val"

    .prologue
    .line 513
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/os/Parcel;->nativeWriteString(ILjava/lang/String;)V

    .line 514
    return-void
.end method

.method public final writeStringArray([Ljava/lang/String;)V
    .locals 3
    .parameter "val"

    .prologue
    .line 905
    if-eqz p1, :cond_0

    .line 906
    array-length v0, p1

    .line 907
    .local v0, N:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 908
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 909
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 908
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 912
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 914
    :cond_1
    return-void
.end method

.method public final writeStringList(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1037
    .local p1, val:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 1038
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1048
    :cond_0
    return-void

    .line 1041
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1042
    .local v0, N:I
    const/4 v1, 0x0

    .line 1043
    .local v1, i:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1044
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1045
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1046
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final writeStrongBinder(Landroid/os/IBinder;)V
    .locals 1
    .parameter "val"

    .prologue
    .line 530
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/os/Parcel;->nativeWriteStrongBinder(ILandroid/os/IBinder;)V

    .line 531
    return-void
.end method

.method public final writeStrongInterface(Landroid/os/IInterface;)V
    .locals 1
    .parameter "val"

    .prologue
    .line 538
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 539
    return-void

    .line 538
    :cond_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public final writeTypedArray([Landroid/os/Parcelable;I)V
    .locals 4
    .parameter
    .parameter "parcelableFlags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([TT;I)V"
        }
    .end annotation

    .prologue
    .line 1095
    .local p1, val:[Landroid/os/Parcelable;,"[TT;"
    if-eqz p1, :cond_1

    .line 1096
    array-length v0, p1

    .line 1097
    .local v0, N:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1098
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1099
    aget-object v2, p1, v1

    .line 1100
    .local v2, item:Landroid/os/Parcelable;,"TT;"
    if-eqz v2, :cond_0

    .line 1101
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1102
    invoke-interface {v2, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1098
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1104
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1108
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #item:Landroid/os/Parcelable;,"TT;"
    :cond_1
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1110
    :cond_2
    return-void
.end method

.method public final writeTypedList(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p1, val:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const/4 v4, 0x0

    .line 1006
    if-nez p1, :cond_1

    .line 1007
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1023
    :cond_0
    return-void

    .line 1010
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1011
    .local v0, N:I
    const/4 v1, 0x0

    .line 1012
    .local v1, i:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1013
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1014
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 1015
    .local v2, item:Landroid/os/Parcelable;,"TT;"
    if-eqz v2, :cond_2

    .line 1016
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1017
    invoke-interface {v2, p0, v4}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1021
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 1022
    goto :goto_0

    .line 1019
    :cond_2
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method

.method public final writeValue(Ljava/lang/Object;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1156
    if-nez p1, :cond_0

    .line 1157
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1237
    .end local p1
    :goto_0
    return-void

    .line 1158
    .restart local p1
    :cond_0
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1159
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1160
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1161
    .restart local p1
    :cond_1
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 1162
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1163
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1164
    .restart local p1
    :cond_2
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_3

    .line 1165
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1166
    check-cast p1, Ljava/util/Map;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto :goto_0

    .line 1167
    .restart local p1
    :cond_3
    instance-of v2, p1, Landroid/os/Bundle;

    if-eqz v2, :cond_4

    .line 1169
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1170
    check-cast p1, Landroid/os/Bundle;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1171
    .restart local p1
    :cond_4
    instance-of v2, p1, Landroid/os/Parcelable;

    if-eqz v2, :cond_5

    .line 1172
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1173
    check-cast p1, Landroid/os/Parcelable;

    .end local p1
    invoke-virtual {p0, p1, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 1174
    .restart local p1
    :cond_5
    instance-of v2, p1, Ljava/lang/Short;

    if-eqz v2, :cond_6

    .line 1175
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1176
    check-cast p1, Ljava/lang/Short;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Short;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1177
    .restart local p1
    :cond_6
    instance-of v2, p1, Ljava/lang/Long;

    if-eqz v2, :cond_7

    .line 1178
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1179
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 1180
    .restart local p1
    :cond_7
    instance-of v2, p1, Ljava/lang/Float;

    if-eqz v2, :cond_8

    .line 1181
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1182
    check-cast p1, Ljava/lang/Float;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_0

    .line 1183
    .restart local p1
    :cond_8
    instance-of v2, p1, Ljava/lang/Double;

    if-eqz v2, :cond_9

    .line 1184
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1185
    check-cast p1, Ljava/lang/Double;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    goto/16 :goto_0

    .line 1186
    .restart local p1
    :cond_9
    instance-of v2, p1, Ljava/lang/Boolean;

    if-eqz v2, :cond_b

    .line 1187
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1188
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a

    :goto_1
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_a
    move v0, v1

    goto :goto_1

    .line 1189
    .restart local p1
    :cond_b
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_c

    .line 1191
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1192
    check-cast p1, Ljava/lang/CharSequence;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1193
    .restart local p1
    :cond_c
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_d

    .line 1194
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1195
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1196
    .restart local p1
    :cond_d
    instance-of v0, p1, Landroid/util/SparseArray;

    if-eqz v0, :cond_e

    .line 1197
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1198
    check-cast p1, Landroid/util/SparseArray;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    goto/16 :goto_0

    .line 1199
    .restart local p1
    :cond_e
    instance-of v0, p1, [Z

    if-eqz v0, :cond_f

    .line 1200
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1201
    check-cast p1, [Z

    .end local p1
    check-cast p1, [Z

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    goto/16 :goto_0

    .line 1202
    .restart local p1
    :cond_f
    instance-of v0, p1, [B

    if-eqz v0, :cond_10

    .line 1203
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1204
    check-cast p1, [B

    .end local p1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 1205
    .restart local p1
    :cond_10
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 1206
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1207
    check-cast p1, [Ljava/lang/String;

    .end local p1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1208
    .restart local p1
    :cond_11
    instance-of v0, p1, [Ljava/lang/CharSequence;

    if-eqz v0, :cond_12

    .line 1210
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1211
    check-cast p1, [Ljava/lang/CharSequence;

    .end local p1
    check-cast p1, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1212
    .restart local p1
    :cond_12
    instance-of v0, p1, Landroid/os/IBinder;

    if-eqz v0, :cond_13

    .line 1213
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1214
    check-cast p1, Landroid/os/IBinder;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 1215
    .restart local p1
    :cond_13
    instance-of v0, p1, [Landroid/os/Parcelable;

    if-eqz v0, :cond_14

    .line 1216
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1217
    check-cast p1, [Landroid/os/Parcelable;

    .end local p1
    check-cast p1, [Landroid/os/Parcelable;

    invoke-virtual {p0, p1, v1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 1218
    .restart local p1
    :cond_14
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_15

    .line 1219
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1220
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1221
    .restart local p1
    :cond_15
    instance-of v0, p1, [I

    if-eqz v0, :cond_16

    .line 1222
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1223
    check-cast p1, [I

    .end local p1
    check-cast p1, [I

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 1224
    .restart local p1
    :cond_16
    instance-of v0, p1, [J

    if-eqz v0, :cond_17

    .line 1225
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1226
    check-cast p1, [J

    .end local p1
    check-cast p1, [J

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_0

    .line 1227
    .restart local p1
    :cond_17
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_18

    .line 1228
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1229
    check-cast p1, Ljava/lang/Byte;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1230
    .restart local p1
    :cond_18
    instance-of v0, p1, Ljava/io/Serializable;

    if-eqz v0, :cond_19

    .line 1232
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1233
    check-cast p1, Ljava/io/Serializable;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    goto/16 :goto_0

    .line 1235
    .restart local p1
    :cond_19
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parcel: unable to marshal value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
