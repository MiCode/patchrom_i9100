.class public Landroid/mtp/MTPJNIInterface;
.super Ljava/lang/Object;
.source "MTPJNIInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MTPJNIInterface$MusicPlaylist;
    }
.end annotation


# static fields
.field static final CONNECTED:I = 0x3

.field static final DOWNLOADING:I = 0x4

.field private static final GETTHUMBNAILTIME:I = 0xe4e1c0

.field private static final MICRO_HEIGH:I = 0x78

.field private static final MICRO_WIDTH:I = 0x78

.field static final SENDING:I = 0x5

.field static final SYNCHRONIZING:I = 0xa

.field static final TAG:Ljava/lang/String; = "MTPJNIInterface"

.field static final USB_REMOVED:I = 0x13

.field static final USB_TETHERING_ENABLED:I = 0xe

.field static cr:Landroid/content/ContentResolver;

.field private static mHandler:Landroid/os/Handler;

.field private static mcontext:Landroid/content/Context;

.field private static mtpJNIInterface:Landroid/mtp/MTPJNIInterface;

.field private static scannerStatus:I


# instance fields
.field private album:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private composer:Ljava/lang/String;

.field private creationDate:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private displayname:Ljava/lang/String;

.field private duration:Ljava/lang/String;

.field private filename:Ljava/lang/String;

.field private genreName:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private latitude:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private final mMtpReceiver:Landroid/content/BroadcastReceiver;

.field private mimeType:Ljava/lang/String;

.field private modificationDate:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private size:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private year:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 85
    const/4 v1, 0x0

    sput v1, Landroid/mtp/MTPJNIInterface;->scannerStatus:I

    .line 135
    new-instance v1, Landroid/mtp/MTPJNIInterface;

    invoke-direct {v1}, Landroid/mtp/MTPJNIInterface;-><init>()V

    sput-object v1, Landroid/mtp/MTPJNIInterface;->mtpJNIInterface:Landroid/mtp/MTPJNIInterface;

    .line 156
    :try_start_0
    const-string v1, "mtp_samsung_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 158
    .end local v0           #ule:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 159
    .restart local v0       #ule:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "MTPJNIInterface"

    const-string v2, "WARNING: Could not load libmtp__samsung_jni.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 137
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->title:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->path:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->album:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->filename:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->displayname:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->id:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->duration:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->size:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->mimeType:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->creationDate:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->modificationDate:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->artist:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->composer:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->year:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->description:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->language:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->longitude:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->latitude:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->genreName:Ljava/lang/String;

    .line 204
    new-instance v0, Landroid/mtp/MTPJNIInterface$1;

    invoke-direct {v0, p0}, Landroid/mtp/MTPJNIInterface$1;-><init>(Landroid/mtp/MTPJNIInterface;)V

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->mMtpReceiver:Landroid/content/BroadcastReceiver;

    .line 138
    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private native alertNotiHandler(I)V
.end method

.method private computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I
    .locals 7
    .parameter "options"
    .parameter "target"

    .prologue
    const/4 v5, 0x1

    .line 795
    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 796
    .local v4, w:I
    iget v3, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 798
    .local v3, h:I
    div-int v2, v4, p2

    .line 799
    .local v2, candidateW:I
    div-int v1, v3, p2

    .line 801
    .local v1, candidateH:I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 803
    .local v0, candidate:I
    if-nez v0, :cond_0

    .line 815
    :goto_0
    return v5

    .line 806
    :cond_0
    if-le v0, v5, :cond_1

    .line 807
    if-le v4, p2, :cond_1

    div-int v6, v4, v0

    if-ge v6, p2, :cond_1

    .line 808
    add-int/lit8 v0, v0, -0x1

    .line 811
    :cond_1
    if-le v0, v5, :cond_2

    .line 812
    if-le v3, p2, :cond_2

    div-int v5, v3, v0

    if-ge v5, p2, :cond_2

    .line 813
    add-int/lit8 v0, v0, -0x1

    :cond_2
    move v5, v0

    .line 815
    goto :goto_0
.end method

.method private native enumerateMtp(II)V
.end method

.method private getExifOrientation(Ljava/lang/String;)I
    .locals 6
    .parameter "filepath"

    .prologue
    const/4 v5, -0x1

    .line 764
    const/4 v0, 0x0

    .line 765
    .local v0, degree:I
    const/4 v1, 0x0

    .line 767
    .local v1, exif:Landroid/media/ExifInterface;
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #exif:Landroid/media/ExifInterface;
    .local v2, exif:Landroid/media/ExifInterface;
    move-object v1, v2

    .line 771
    .end local v2           #exif:Landroid/media/ExifInterface;
    .restart local v1       #exif:Landroid/media/ExifInterface;
    :goto_0
    if-eqz v1, :cond_0

    .line 772
    const-string v4, "Orientation"

    invoke-virtual {v1, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    .line 773
    .local v3, orientation:I
    if-eq v3, v5, :cond_0

    .line 775
    packed-switch v3, :pswitch_data_0

    .line 790
    .end local v3           #orientation:I
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .line 777
    .restart local v3       #orientation:I
    :pswitch_1
    const/16 v0, 0x5a

    .line 778
    goto :goto_1

    .line 780
    :pswitch_2
    const/16 v0, 0xb4

    .line 781
    goto :goto_1

    .line 783
    :pswitch_3
    const/16 v0, 0x10e

    .line 784
    goto :goto_1

    .line 768
    .end local v3           #orientation:I
    :catch_0
    move-exception v4

    goto :goto_0

    .line 775
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getImageThumbBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "path"

    .prologue
    .line 850
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 851
    .local v1, m:Landroid/graphics/Matrix;
    const/4 v2, 0x0

    .line 852
    .local v2, tempB:Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 855
    .local v6, b:Landroid/graphics/Bitmap;
    const/16 v0, 0x100

    :try_start_0
    invoke-direct {p0, v0, p1}, Landroid/mtp/MTPJNIInterface;->getSampleSizeBitmap(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 856
    const/16 v3, 0x40

    const/16 v4, 0x40

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/mtp/MTPJNIInterface;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 857
    if-eqz v2, :cond_0

    .line 858
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    :cond_0
    :goto_0
    return-object v6

    .line 859
    :catch_0
    move-exception v7

    .line 860
    .local v7, e:Ljava/lang/Exception;
    if-eqz v2, :cond_1

    .line 861
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 862
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Landroid/mtp/MTPJNIInterface;
    .locals 2

    .prologue
    .line 141
    const-class v0, Landroid/mtp/MTPJNIInterface;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/mtp/MTPJNIInterface;->mtpJNIInterface:Landroid/mtp/MTPJNIInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getSampleSizeBitmap(ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "targetWidthHeight"
    .parameter "path"

    .prologue
    .line 742
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 745
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 746
    invoke-static {p2, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 748
    .local v0, bm:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 750
    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    .line 751
    invoke-direct {p0, v2, p1}, Landroid/mtp/MTPJNIInterface;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 753
    :cond_0
    invoke-static {p2, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 755
    const/4 v1, 0x0

    .line 756
    .local v1, degree:I
    invoke-direct {p0, p2}, Landroid/mtp/MTPJNIInterface;->getExifOrientation(Ljava/lang/String;)I

    move-result v1

    .line 758
    if-eqz v1, :cond_1

    .line 759
    invoke-direct {p0, v0, v1}, Landroid/mtp/MTPJNIInterface;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 761
    :cond_1
    return-object v0
.end method

.method private getVideoThumbBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "path"

    .prologue
    const/high16 v8, 0x42f0

    .line 869
    new-instance v6, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v6}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 870
    .local v6, retriever:Landroid/media/MediaMetadataRetriever;
    const/4 v2, 0x0

    .line 874
    .local v2, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {v6, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 877
    const/16 v0, 0x78

    const/16 v3, 0x78

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v6, v0, v3, v4, v5}, Landroid/media/MediaMetadataRetriever;->setVideoSize(IIZZ)V

    .line 878
    const-wide/32 v3, 0xe4e1c0

    invoke-virtual {v6, v3, v4}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 880
    const/4 v7, 0x0

    .line 881
    .local v7, scale:F
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 882
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v7, v8, v0

    .line 887
    :goto_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 888
    .local v1, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v1, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 889
    const/16 v3, 0x78

    const/16 v4, 0x78

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/mtp/MTPJNIInterface;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 893
    .end local v1           #matrix:Landroid/graphics/Matrix;
    .end local v7           #scale:F
    :goto_1
    return-object v0

    .line 884
    .restart local v7       #scale:F
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-float v0, v0

    div-float v7, v8, v0

    goto :goto_0

    .line 890
    .end local v7           #scale:F
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 893
    goto :goto_1
.end method

.method private isTetheringEnabled()Z
    .locals 15

    .prologue
    .line 192
    const/4 v12, 0x0

    .line 193
    .local v12, usbTethered:Z
    sget-object v13, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    const-string v14, "connectivity"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 194
    .local v2, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v11

    .line 195
    .local v11, tethered:[Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v7

    .line 196
    .local v7, mUsbRegexs:[Ljava/lang/String;
    move-object v0, v11

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v4, v3

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v8, v0, v4

    .local v8, o:Ljava/lang/String;
    move-object v10, v8

    .line 197
    check-cast v10, Ljava/lang/String;

    .line 198
    .local v10, s:Ljava/lang/String;
    move-object v1, v7

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_1
    if-ge v3, v6, :cond_1

    aget-object v9, v1, v3

    .line 199
    .local v9, regex:Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v12, 0x1

    .line 198
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 196
    .end local v9           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_0

    .line 202
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v6           #len$:I
    .end local v8           #o:Ljava/lang/String;
    .end local v10           #s:Ljava/lang/String;
    :cond_2
    return v12
.end method

.method private native objectAdded(Ljava/lang/String;)V
.end method

.method private native objectPlaAdded(Ljava/lang/String;)V
.end method

.method private native objectPlaRemoved(Ljava/lang/String;)V
.end method

.method private native objectPropChanged(Ljava/lang/String;)V
.end method

.method private native objectRemoved(Ljava/lang/String;)V
.end method

.method private registerBroadCastRec()V
    .locals 3

    .prologue
    .line 181
    const-string v1, "MTPJNIInterface"

    const-string v2, "< MTP > Registering BroadCast receiver :::::"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 184
    .local v0, lIntentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.MTP.OBJECT_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    const-string v1, "com.android.MTP.OBJECT_PROP_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    const-string v1, "com.android.MTP.OBJECT_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    sget-object v1, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    iget-object v2, p0, Landroid/mtp/MTPJNIInterface;->mMtpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 189
    return-void
.end method

.method private rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "b"
    .parameter "degrees"

    .prologue
    const/high16 v3, 0x4000

    .line 725
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 726
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 727
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 729
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 730
    .local v7, b2:Landroid/graphics/Bitmap;
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 731
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    move-object p1, v7

    .line 739
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #b2:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p1

    .line 734
    .restart local v5       #m:Landroid/graphics/Matrix;
    :catch_0
    move-exception v8

    .line 736
    .local v8, ex:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method

.method private native testMtpCommands(II)V
.end method

.method private transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "scaler"
    .parameter "source"
    .parameter "targetWidth"
    .parameter "targetHeight"
    .parameter "scaleUp"

    .prologue
    .line 820
    if-nez p2, :cond_1

    .line 821
    const/4 v10, 0x0

    .line 847
    :cond_0
    :goto_0
    return-object v10

    .line 824
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 825
    move/from16 v0, p3

    int-to-float v2, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v13, v2, v3

    .line 831
    .local v13, scale:F
    :goto_1
    if-eqz p1, :cond_3

    .line 832
    invoke-virtual {p1, v13, v13}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 834
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    move-object/from16 v2, p2

    move-object v7, p1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 839
    .local v9, b1:Landroid/graphics/Bitmap;
    :goto_2
    const/4 v2, 0x0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v3, v3, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 840
    .local v11, dx1:I
    const/4 v2, 0x0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v3, v3, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 842
    .local v12, dy1:I
    div-int/lit8 v2, v11, 0x2

    div-int/lit8 v3, v12, 0x2

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v9, v2, v3, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 844
    .local v10, b2:Landroid/graphics/Bitmap;
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 845
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 827
    .end local v9           #b1:Landroid/graphics/Bitmap;
    .end local v10           #b2:Landroid/graphics/Bitmap;
    .end local v11           #dx1:I
    .end local v12           #dy1:I
    .end local v13           #scale:F
    :cond_2
    move/from16 v0, p4

    int-to-float v2, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v13, v2, v3

    .restart local v13       #scale:F
    goto :goto_1

    .line 836
    :cond_3
    move-object/from16 v9, p2

    .restart local v9       #b1:Landroid/graphics/Bitmap;
    goto :goto_2
.end method


# virtual methods
.method public GetBatteryLevel()I
    .locals 2

    .prologue
    .line 303
    const-string v0, "MTPJNIInterface"

    const-string v1, "Getting battery Level from JAVA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/16 v0, 0xa

    return v0
.end method

.method public GetMediaObject(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 10
    .parameter "filename"

    .prologue
    const/4 v2, 0x0

    .line 1092
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1094
    .local v1, audioURI:Landroid/net/Uri;
    move-object v9, p1

    .line 1097
    .local v9, path:Ljava/lang/String;
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data =\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1100
    .local v6, c1:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 1121
    :goto_0
    return-object v2

    .line 1104
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 1105
    .local v8, objectCount:I
    const-string v0, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Total object count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    new-array v7, v8, [Landroid/mtp/MediaObject;

    .line 1108
    .local v7, objectArray:[Landroid/mtp/MediaObject;
    invoke-virtual {p0, v6, v7}, Landroid/mtp/MTPJNIInterface;->getColumnData(Landroid/database/Cursor;[Landroid/mtp/MediaObject;)V

    .line 1119
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v2, v7

    .line 1121
    goto :goto_0
.end method

.method public UpdateMediaDB(Ljava/lang/String;)V
    .locals 6
    .parameter "filename"

    .prologue
    .line 311
    move-object v0, p1

    .line 315
    .local v0, contentName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
    .local v1, file:Ljava/io/File;
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 318
    return-void
.end method

.method public addPlaylist(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .parameter "playlistName"
    .parameter "playlistPath"

    .prologue
    const/4 v2, 0x0

    .line 357
    const-string v0, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Playlistname :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const-string v0, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Playlist path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    sget-object v1, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 365
    .local v1, playlistUri:Landroid/net/Uri;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 366
    .local v10, values:Landroid/content/ContentValues;
    const-string v0, "name"

    invoke-virtual {v10, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v0, "_data"

    invoke-virtual {v10, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 369
    .local v7, cur:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 370
    const-string v0, "MTPJNIInterface"

    const-string v2, "Cur is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v9, -0x1

    .line 391
    :goto_0
    return v9

    .line 373
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 374
    .local v6, count:I
    const-string v0, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Count"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/4 v9, 0x0

    .line 377
    .local v9, rowID:I
    const/4 v8, 0x0

    .line 378
    .local v8, newUri:Landroid/net/Uri;
    if-nez v6, :cond_2

    .line 379
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    .line 380
    if-nez v8, :cond_1

    .line 381
    const-string v0, "MTPJNIInterface"

    const-string v2, "Insertion failure"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 383
    :cond_1
    const-string v0, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The New URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual {v8}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_1

    .line 387
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 388
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    goto :goto_1
.end method

.method public addtoPlaylist(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 26
    .parameter "playlistName"
    .parameter "filename"
    .parameter "order"

    .prologue
    .line 493
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Playlistname :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Filename: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    sget-object v3, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 502
    .local v3, playlistUri:Landroid/net/Uri;
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 503
    .local v25, values:Landroid/content/ContentValues;
    const-string v2, "name"

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "name=\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 505
    .local v19, cur:Landroid/database/Cursor;
    if-nez v19, :cond_0

    .line 506
    const-string v2, "MTPJNIInterface"

    const-string v4, "Cur is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const/4 v2, -0x1

    .line 658
    :goto_0
    return v2

    .line 509
    :cond_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v17

    .line 510
    .local v17, count:I
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Count"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const/16 v24, 0x0

    .line 513
    .local v24, rowID:I
    const/16 v22, 0x0

    .line 514
    .local v22, newUri:Landroid/net/Uri;
    if-nez v17, :cond_1

    .line 515
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 516
    const/4 v2, -0x1

    goto :goto_0

    .line 518
    :cond_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    .line 519
    const-string v2, "_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 520
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 532
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Playlist rowID"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 534
    .local v14, audioMAPValues:Landroid/content/ContentValues;
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 535
    .local v5, audioUri:Landroid/net/Uri;
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "URI for the audio DB is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_data=\""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "\""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 537
    .local v16, c1:Landroid/database/Cursor;
    if-nez v16, :cond_2

    .line 538
    const-string v2, "MTPJNIInterface"

    const-string v4, "c1 Cur is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 540
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 542
    :cond_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v17

    .line 543
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Data from the audio count"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    if-nez v17, :cond_4

    .line 548
    new-instance v25, Landroid/content/ContentValues;

    .end local v25           #values:Landroid/content/ContentValues;
    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 549
    .restart local v25       #values:Landroid/content/ContentValues;
    const-string v2, "_data"

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const-string v2, "is_music"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 551
    const-string v2, "is_ringtone"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 552
    const-string v2, "is_alarm"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 553
    const-string v2, "is_notification"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 554
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 555
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The audio URI "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v22

    .line 557
    invoke-virtual/range {v25 .. v25}, Landroid/content/ContentValues;->clear()V

    .line 558
    const-string v2, "date_modified"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 559
    if-nez v22, :cond_3

    .line 560
    const-string v2, "MTPJNIInterface"

    const-string v4, "Insertion failure"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 562
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 563
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 565
    :cond_3
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The New URI "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v2, v0, v1, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 573
    :cond_4
    if-nez v17, :cond_6

    .line 574
    new-instance v14, Landroid/content/ContentValues;

    .end local v14           #audioMAPValues:Landroid/content/ContentValues;
    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 575
    .restart local v14       #audioMAPValues:Landroid/content/ContentValues;
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 576
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "URI for the audio DB is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_data=\""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "\""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 578
    if-nez v16, :cond_5

    .line 579
    const-string v2, "MTPJNIInterface"

    const-string v4, "Cur is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 581
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 583
    :cond_5
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v17

    .line 584
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Data from the audio count"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_6
    const/4 v13, 0x0

    .line 587
    .local v13, audioID:I
    const/4 v12, 0x1

    .line 588
    .local v12, add_in_playlist:Z
    if-lez v17, :cond_9

    .line 589
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 590
    const-string v2, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 591
    const-string v2, "external"

    move/from16 v0, v24

    int-to-long v8, v0

    invoke-static {v2, v8, v9}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v7

    .line 595
    .local v7, playlistMemberUri:Landroid/net/Uri;
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audio_id=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 597
    .local v20, cur2:Landroid/database/Cursor;
    const/16 v18, 0x0

    .line 598
    .local v18, count2:I
    if-nez v20, :cond_7

    .line 599
    const-string v2, "MTPJNIInterface"

    const-string v4, "Cursor cur2 is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 601
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 603
    :cond_7
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v18

    .line 605
    if-eqz v18, :cond_8

    .line 606
    const/4 v12, 0x0

    .line 607
    :cond_8
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 611
    .end local v7           #playlistMemberUri:Landroid/net/Uri;
    .end local v18           #count2:I
    .end local v20           #cur2:Landroid/database/Cursor;
    :cond_9
    const/4 v15, 0x0

    .line 614
    .local v15, audio_HashCode:I
    if-lez v17, :cond_b

    .line 615
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 616
    const-string v2, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 618
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Row ID for audio file"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 622
    const-string v2, "audio_id"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 627
    const-string v2, "play_order"

    add-int/lit8 v4, p3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 628
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Playlist ID"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const-string v2, "playlist_id"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 636
    if-eqz v12, :cond_a

    .line 640
    :try_start_0
    const-string v2, "external"

    move/from16 v0, v24

    int-to-long v8, v0

    invoke-static {v2, v8, v9}, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->getMembersContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v23

    .line 643
    .local v23, playlist_map:Landroid/net/Uri;
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Audio map URI"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v22

    .line 645
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The New URI for the audio map"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    .end local v23           #playlist_map:Landroid/net/Uri;
    :cond_a
    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 646
    :catch_0
    move-exception v21

    .line 647
    .local v21, e:Ljava/lang/Exception;
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 655
    .end local v21           #e:Ljava/lang/Exception;
    :cond_b
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 656
    const/4 v2, -0x1

    goto/16 :goto_0
.end method

.method public deleteAllItemofPlaylist(Ljava/lang/String;)V
    .locals 11
    .parameter "playlistName"

    .prologue
    const/4 v2, 0x0

    .line 1060
    const-string v0, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playlistName :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    sget-object v1, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1063
    .local v1, playlistUri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 1065
    .local v8, noOfSongs:I
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1066
    .local v7, cur:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 1067
    const-string v0, "MTPJNIInterface"

    const-string v2, "Cur is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    :goto_0
    return-void

    .line 1070
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1071
    .local v6, count:I
    const-string v0, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Count"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    const/4 v10, 0x0

    .line 1074
    .local v10, rowID:I
    if-nez v6, :cond_1

    .line 1075
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1076
    const-string v0, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playlist "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not present"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1079
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1080
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1081
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1083
    const-string v0, "external"

    int-to-long v3, v10

    invoke-static {v0, v3, v4}, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->getMembersContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v9

    .line 1084
    .local v9, playlist_map:Landroid/net/Uri;
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playlist_id=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v9, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1085
    const-string v0, "MTPJNIInterface"

    const-string v2, "No of songs of playlistName deleted"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public deletePlaylist(Ljava/lang/String;)I
    .locals 5
    .parameter "playlistName"

    .prologue
    .line 335
    const-string v2, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Playlist to be deleted  :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    sget-object v0, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 342
    .local v0, playlistUri:Landroid/net/Uri;
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 343
    .local v1, ret:I
    const-string v2, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Count"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    if-nez v1, :cond_0

    .line 345
    const-string v2, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deletion unsuccessful"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 347
    :cond_0
    const-string v2, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deletion successful"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deletefromMediaPlayer(Ljava/lang/String;)V
    .locals 6
    .parameter "filename"

    .prologue
    const/4 v5, 0x0

    .line 694
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 695
    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 696
    .local v0, ret:I
    const-string v2, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Row deleted for Audio"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 706
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 707
    const-string v2, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Row deleted Vedio"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 710
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 711
    const-string v2, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Row deleted Vedio from Gallary DB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 715
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 716
    const-string v2, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Row deleted Image"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 719
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 720
    const-string v2, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Row deleted Vedio from Gallary DB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    return-void
.end method

.method public getColumnData(Landroid/database/Cursor;[Landroid/mtp/MediaObject;)V
    .locals 43
    .parameter "cur"
    .parameter "objectArray"

    .prologue
    .line 1130
    const/16 v35, 0x0

    .line 1131
    .local v35, index:I
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1133
    const-string v2, "title"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v41

    .line 1134
    .local v41, titleColumn:I
    const-string v2, "_data"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 1135
    .local v26, dataColumn:I
    const-string v2, "_display_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    .line 1136
    .local v33, filenameColumn:I
    const-string v2, "_size"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v40

    .line 1137
    .local v40, sizeColumn:I
    const-string v2, "mime_type"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v39

    .line 1138
    .local v39, mimeColumn:I
    const-string v2, "date_added"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 1139
    .local v27, dateCreatedColumn:I
    const-string v2, "date_modified"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 1140
    .local v28, dateModifiedColumn:I
    const-string v2, "date_modified"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    .line 1141
    .local v34, idColumn:I
    const-string v2, "_display_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 1142
    .local v30, displayColumn:I
    const-string v2, "duration"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 1143
    .local v31, durationColumn_audio:I
    const-string v2, "album"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 1145
    .local v21, albumColumn_audio:I
    const-string v2, "artist"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 1146
    .local v23, artistColumn_audio:I
    const-string v2, "composer"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 1147
    .local v25, composerColumn_audio:I
    const-string v2, "year"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v42

    .line 1149
    .local v42, yearColumn_audio:I
    const-string v2, "duration"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 1150
    .local v32, durationColumn_video:I
    const-string v2, "album"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 1151
    .local v22, albumColumn_video:I
    const-string v2, "description"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 1152
    .local v29, descriptionColumn_video:I
    const-string v2, "latitude"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v37

    .line 1153
    .local v37, latitudeColumn_video:I
    const-string v2, "longitude"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v38

    .line 1154
    .local v38, longitudeCoulmn_video:I
    const-string v2, "language"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    .line 1155
    .local v36, languageColumn_video:I
    const-string v2, "artist"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 1160
    .local v24, artistColumn_video:I
    :cond_0
    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->id:Ljava/lang/String;

    .line 1162
    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->filename:Ljava/lang/String;

    .line 1164
    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->title:Ljava/lang/String;

    .line 1166
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->path:Ljava/lang/String;

    .line 1168
    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->size:Ljava/lang/String;

    .line 1170
    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->mimeType:Ljava/lang/String;

    .line 1172
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->creationDate:Ljava/lang/String;

    .line 1174
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->modificationDate:Ljava/lang/String;

    .line 1176
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MTPJNIInterface;->mimeType:Ljava/lang/String;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1178
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->displayname:Ljava/lang/String;

    .line 1182
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->album:Ljava/lang/String;

    .line 1184
    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->duration:Ljava/lang/String;

    .line 1186
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->artist:Ljava/lang/String;

    .line 1188
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->composer:Ljava/lang/String;

    .line 1190
    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->year:Ljava/lang/String;

    .line 1192
    const-string v2, "genre_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->genreName:Ljava/lang/String;

    .line 1206
    :cond_1
    :goto_0
    new-instance v2, Landroid/mtp/MediaObject;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MTPJNIInterface;->filename:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MTPJNIInterface;->album:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/mtp/MTPJNIInterface;->artist:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/mtp/MTPJNIInterface;->composer:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/mtp/MTPJNIInterface;->creationDate:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/mtp/MTPJNIInterface;->description:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/mtp/MTPJNIInterface;->duration:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/mtp/MTPJNIInterface;->id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/mtp/MTPJNIInterface;->language:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/mtp/MTPJNIInterface;->latitude:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/mtp/MTPJNIInterface;->longitude:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/mtp/MTPJNIInterface;->mimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/mtp/MTPJNIInterface;->modificationDate:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MTPJNIInterface;->path:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MTPJNIInterface;->size:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MTPJNIInterface;->title:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MTPJNIInterface;->year:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MTPJNIInterface;->genreName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-direct/range {v2 .. v20}, Landroid/mtp/MediaObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, p2, v35
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1207
    add-int/lit8 v35, v35, 0x1

    .line 1213
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1215
    .end local v21           #albumColumn_audio:I
    .end local v22           #albumColumn_video:I
    .end local v23           #artistColumn_audio:I
    .end local v24           #artistColumn_video:I
    .end local v25           #composerColumn_audio:I
    .end local v26           #dataColumn:I
    .end local v27           #dateCreatedColumn:I
    .end local v28           #dateModifiedColumn:I
    .end local v29           #descriptionColumn_video:I
    .end local v30           #displayColumn:I
    .end local v31           #durationColumn_audio:I
    .end local v32           #durationColumn_video:I
    .end local v33           #filenameColumn:I
    .end local v34           #idColumn:I
    .end local v36           #languageColumn_video:I
    .end local v37           #latitudeColumn_video:I
    .end local v38           #longitudeCoulmn_video:I
    .end local v39           #mimeColumn:I
    .end local v40           #sizeColumn:I
    .end local v41           #titleColumn:I
    .end local v42           #yearColumn_audio:I
    :cond_2
    return-void

    .line 1195
    .restart local v21       #albumColumn_audio:I
    .restart local v22       #albumColumn_video:I
    .restart local v23       #artistColumn_audio:I
    .restart local v24       #artistColumn_video:I
    .restart local v25       #composerColumn_audio:I
    .restart local v26       #dataColumn:I
    .restart local v27       #dateCreatedColumn:I
    .restart local v28       #dateModifiedColumn:I
    .restart local v29       #descriptionColumn_video:I
    .restart local v30       #displayColumn:I
    .restart local v31       #durationColumn_audio:I
    .restart local v32       #durationColumn_video:I
    .restart local v33       #filenameColumn:I
    .restart local v34       #idColumn:I
    .restart local v36       #languageColumn_video:I
    .restart local v37       #latitudeColumn_video:I
    .restart local v38       #longitudeCoulmn_video:I
    .restart local v39       #mimeColumn:I
    .restart local v40       #sizeColumn:I
    .restart local v41       #titleColumn:I
    .restart local v42       #yearColumn_audio:I
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MTPJNIInterface;->mimeType:Ljava/lang/String;

    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1197
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->album:Ljava/lang/String;

    .line 1198
    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->duration:Ljava/lang/String;

    .line 1199
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->artist:Ljava/lang/String;

    .line 1200
    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->description:Ljava/lang/String;

    .line 1201
    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->longitude:Ljava/lang/String;

    .line 1202
    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->latitude:Ljava/lang/String;

    .line 1203
    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->language:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1208
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public getExternalStorageStatus(Ljava/lang/String;)I
    .locals 7
    .parameter "mountPath"

    .prologue
    const/4 v3, 0x0

    .line 440
    const/4 v1, 0x0

    .line 441
    .local v1, status:Ljava/lang/String;
    sget-object v4, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    const-string v5, "storage"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 443
    .local v2, storageManager:Landroid/os/storage/StorageManager;
    if-eqz p1, :cond_0

    .line 445
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 452
    :cond_0
    if-eqz v1, :cond_1

    .line 453
    const-string v4, "MTPJNIInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Status for mount/Unmount :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const-string v4, "mounted"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 455
    const-string v4, "MTPJNIInterface"

    const-string v5, "SDcard is not available"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_1
    :goto_0
    return v3

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 448
    const-string v4, "MTPJNIInterface"

    const-string v5, "Exception is coming while getting the Mount status"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 458
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const-string v3, "MTPJNIInterface"

    const-string v4, "SDcard is  available"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getMediaScannerStatus(I)I
    .locals 3
    .parameter "temp"

    .prologue
    .line 277
    const-string v0, "MTPJNIInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting media scanner status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/mtp/MTPJNIInterface;->scannerStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    sget v0, Landroid/mtp/MTPJNIInterface;->scannerStatus:I

    return v0
.end method

.method public getMtpEnumerate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 281
    const-string v0, "MTPJNIInterface"

    const-string v1, "MTP in GetEnumerateMtp"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-direct {p0, v2, v2}, Landroid/mtp/MTPJNIInterface;->enumerateMtp(II)V

    .line 283
    return-void
.end method

.method public getPlaylistId(Ljava/lang/String;)I
    .locals 9
    .parameter "playlistName"

    .prologue
    const/4 v2, 0x0

    .line 668
    sget-object v1, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 671
    .local v1, playlistUri:Landroid/net/Uri;
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 672
    .local v7, cur:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 673
    const-string v0, "MTPJNIInterface"

    const-string v2, "Cur is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const/4 v8, -0x1

    .line 688
    :goto_0
    return v8

    .line 676
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 677
    .local v6, count:I
    const-string v0, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Count"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/4 v8, 0x0

    .line 680
    .local v8, rowID:I
    if-nez v6, :cond_1

    .line 681
    const/4 v8, -0x1

    .line 686
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 687
    const-string v0, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Playlist ID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 683
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 684
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    goto :goto_1
.end method

.method public getThumbnail(Ljava/lang/String;I)I
    .locals 11
    .parameter "filename"
    .parameter "type"

    .prologue
    const/4 v10, 0x0

    .line 898
    const-string v7, "MTPJNIInterface"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "inside getThumbnail for  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    const/4 v5, 0x0

    .line 901
    .local v5, thumbsize:I
    const/4 v7, 0x1

    if-ne p2, v7, :cond_1

    .line 902
    const-string v7, "MTPJNIInterface"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "inside getThumbnail for images for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    invoke-direct {p0, p1}, Landroid/mtp/MTPJNIInterface;->getImageThumbBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 905
    .local v4, thumb:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_0

    .line 906
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 907
    .local v1, bos:Ljava/io/ByteArrayOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v4, v7, v10, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 908
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 909
    .local v0, bitmapdata:[B
    array-length v5, v0

    .line 910
    const-string v7, "MTPJNIInterface"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "thumbnail size is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v7, "/data/data/com.android.MtpApplication/test_thumb_img.jpg"

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 914
    .local v3, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 915
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #bitmapdata:[B
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :goto_0
    move v6, v5

    .line 951
    .end local v4           #thumb:Landroid/graphics/Bitmap;
    .end local v5           #thumbsize:I
    .local v6, thumbsize:I
    :goto_1
    return v6

    .line 917
    .end local v6           #thumbsize:I
    .restart local v0       #bitmapdata:[B
    .restart local v1       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #thumb:Landroid/graphics/Bitmap;
    .restart local v5       #thumbsize:I
    :catch_0
    move-exception v2

    .line 918
    .local v2, e:Ljava/io/IOException;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 922
    .end local v0           #bitmapdata:[B
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #e:Ljava/io/IOException;
    :cond_0
    const-string v7, "MTPJNIInterface"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "thumb is coming null from ThumbnailUtils.java for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 925
    .end local v4           #thumb:Landroid/graphics/Bitmap;
    :cond_1
    const/4 v7, 0x2

    if-ne p2, v7, :cond_3

    .line 926
    const-string v7, "MTPJNIInterface"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "inside getThumbnail for videos"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    invoke-direct {p0, p1}, Landroid/mtp/MTPJNIInterface;->getVideoThumbBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 929
    .restart local v4       #thumb:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_2

    .line 930
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 931
    .restart local v1       #bos:Ljava/io/ByteArrayOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v4, v7, v10, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 932
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 935
    .restart local v0       #bitmapdata:[B
    array-length v5, v0

    .line 936
    const-string v7, "MTPJNIInterface"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "thumbnail size is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v7, "/data/data/com.android.MtpApplication/test_thumb_img.jpg"

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 940
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 941
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0           #bitmapdata:[B
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :goto_2
    move v6, v5

    .line 949
    .end local v5           #thumbsize:I
    .restart local v6       #thumbsize:I
    goto :goto_1

    .line 943
    .end local v6           #thumbsize:I
    .restart local v0       #bitmapdata:[B
    .restart local v1       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #thumbsize:I
    :catch_1
    move-exception v2

    .line 944
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 947
    .end local v0           #bitmapdata:[B
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #e:Ljava/io/IOException;
    :cond_2
    const-string v7, "MTPJNIInterface"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "thumb is coming null from ThumbnailUtils.java for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v4           #thumb:Landroid/graphics/Bitmap;
    :cond_3
    move v6, v5

    .line 951
    .end local v5           #thumbsize:I
    .restart local v6       #thumbsize:I
    goto/16 :goto_1
.end method

.method public mtpCommands(II)V
    .locals 3
    .parameter "opCode"
    .parameter "transactionId"

    .prologue
    .line 174
    const-string v0, "MTPJNIInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MTP in testMtpCommands of MTPJNIInterface: code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "transactionId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/mtp/MTPJNIInterface;->alertNotiHandler(I)V

    .line 179
    return-void
.end method

.method public noOfSongsInPlaylist(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "playlistName"

    .prologue
    const/4 v2, 0x0

    .line 956
    sget-object v1, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 957
    .local v1, playlistUri:Landroid/net/Uri;
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 958
    .local v11, cur:Landroid/database/Cursor;
    if-nez v11, :cond_0

    .line 959
    const-string v0, "MTPJNIInterface"

    const-string v3, "Cur is null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :goto_0
    return-object v2

    .line 962
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 963
    .local v9, count:I
    const/4 v12, 0x0

    .line 964
    .local v12, noOfSongs:Ljava/lang/String;
    const/4 v10, 0x0

    .line 965
    .local v10, count1:I
    const/4 v13, 0x0

    .line 966
    .local v13, rowID:I
    if-nez v9, :cond_1

    .line 967
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 968
    const-string v0, "MTPJNIInterface"

    const-string v3, "MTPJNIInterface , Playlist is not present in media DB"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 972
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 973
    const-string v0, "_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 974
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 976
    const-string v0, "external"

    int-to-long v5, v13

    invoke-static {v0, v5, v6}, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->getMembersContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    .line 977
    .local v4, playlist_map:Landroid/net/Uri;
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playlist_id=\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v2

    move-object v7, v2

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 978
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 979
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 980
    if-eqz v10, :cond_2

    .line 981
    const-string v0, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MTPJNIInterface , no of songs in playlist  is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    :cond_2
    move-object v2, v12

    .line 985
    goto :goto_0
.end method

.method public notifyMTPStack(I)V
    .locals 3
    .parameter "noti"

    .prologue
    .line 244
    const-string v0, "MTPJNIInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noti = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    .line 246
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 247
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    iget-object v1, p0, Landroid/mtp/MTPJNIInterface;->mMtpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 250
    :cond_0
    invoke-direct {p0, p1}, Landroid/mtp/MTPJNIInterface;->alertNotiHandler(I)V

    .line 251
    return-void
.end method

.method public renamePlaylist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "playlistOldName"
    .parameter "playlistNewName"
    .parameter "playlistNewPath"

    .prologue
    .line 1047
    const-string v2, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playlistOldName :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    const-string v2, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playlistNewName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    const-string v2, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playlistNewPath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    sget-object v0, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1053
    .local v0, playlistUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1054
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "name"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    const-string v2, "_data"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1057
    return-void
.end method

.method public sendObjectAdded(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 260
    sget-object v0, Landroid/mtp/MTPJNIInterface;->cr:Landroid/content/ContentResolver;

    const-string v1, "mtp_sync_alive"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 261
    invoke-direct {p0, p1}, Landroid/mtp/MTPJNIInterface;->objectAdded(Ljava/lang/String;)V

    .line 263
    :cond_0
    return-void
.end method

.method public sendObjectPropChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 266
    sget-object v0, Landroid/mtp/MTPJNIInterface;->cr:Landroid/content/ContentResolver;

    const-string v1, "mtp_sync_alive"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 267
    invoke-direct {p0, p1}, Landroid/mtp/MTPJNIInterface;->objectPropChanged(Ljava/lang/String;)V

    .line 269
    :cond_0
    return-void
.end method

.method public sendObjectRemoved(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 272
    sget-object v0, Landroid/mtp/MTPJNIInterface;->cr:Landroid/content/ContentResolver;

    const-string v1, "mtp_sync_alive"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 273
    invoke-direct {p0, p1}, Landroid/mtp/MTPJNIInterface;->objectRemoved(Ljava/lang/String;)V

    .line 275
    :cond_0
    return-void
.end method

.method public sendPlaAdded(Ljava/lang/String;)V
    .locals 2
    .parameter "playlist_path"

    .prologue
    .line 286
    const-string v0, "MTPJNIInterface"

    const-string v1, "In sendPlaAdded playlist file path"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-direct {p0, p1}, Landroid/mtp/MTPJNIInterface;->objectPlaAdded(Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public sendPlaRemoved(Ljava/lang/String;)V
    .locals 2
    .parameter "playlist_path"

    .prologue
    .line 292
    const-string v0, ".pla"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    const-string v0, ".pla"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 294
    const-string v0, "MTPJNIInterface"

    const-string v1, "sendPlaRemoved is added .pla "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    const-string v0, "MTPJNIInterface"

    const-string v1, "playlist file path inside sendPlaRemovedis"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-direct {p0, p1}, Landroid/mtp/MTPJNIInterface;->objectPlaRemoved(Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 145
    sput-object p1, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    .line 146
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Landroid/mtp/MTPJNIInterface;->cr:Landroid/content/ContentResolver;

    .line 147
    invoke-direct {p0}, Landroid/mtp/MTPJNIInterface;->registerBroadCastRec()V

    .line 148
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 151
    sput-object p1, Landroid/mtp/MTPJNIInterface;->mHandler:Landroid/os/Handler;

    .line 152
    return-void
.end method

.method public setMediaScannerStatus(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 254
    const-string v0, "MTPJNIInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting Media scanner status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    sput p1, Landroid/mtp/MTPJNIInterface;->scannerStatus:I

    .line 256
    const-string v0, "MTPJNIInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After setting Media scanner status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void
.end method

.method public songPresentCheck(Ljava/lang/String;)I
    .locals 8
    .parameter "filename"

    .prologue
    const/4 v2, 0x0

    .line 990
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 991
    .local v1, audioUri:Landroid/net/Uri;
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 992
    .local v7, cur:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 993
    const-string v0, "MTPJNIInterface"

    const-string v2, "Cur is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    const/4 v0, -0x1

    .line 1001
    :goto_0
    return v0

    .line 996
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 997
    .local v6, count:I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 998
    if-lez v6, :cond_1

    .line 999
    const/4 v0, 0x1

    goto :goto_0

    .line 1001
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public songsPathOfPlaylist(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "playlistname"

    .prologue
    .line 1006
    invoke-virtual {p0, p1}, Landroid/mtp/MTPJNIInterface;->getPlaylistId(Ljava/lang/String;)I

    move-result v12

    .line 1008
    .local v12, rowID:I
    const-string v0, "external"

    int-to-long v4, v12

    invoke-static {v0, v4, v5}, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->getMembersContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 1009
    .local v1, playlist_map:Landroid/net/Uri;
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "audio_id"

    aput-object v5, v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playlist_id=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1010
    .local v10, cur:Landroid/database/Cursor;
    if-nez v10, :cond_0

    .line 1011
    const-string v0, "MTPJNIInterface"

    const-string v2, "Cur is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    const/4 v13, 0x0

    .line 1042
    :goto_0
    return-object v13

    .line 1014
    :cond_0
    const/4 v11, 0x0

    .line 1015
    .local v11, i:I
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 1016
    .local v9, count:I
    new-array v8, v9, [I

    .line 1017
    .local v8, audioId:[I
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1018
    :goto_1
    if-ge v11, v9, :cond_1

    .line 1019
    const-string v0, "audio_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v8, v11

    .line 1020
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 1021
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1023
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1024
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1025
    .local v3, audioUri:Landroid/net/Uri;
    const/4 v11, 0x0

    .line 1026
    const-string v13, ""

    .line 1027
    .local v13, songsPath:Ljava/lang/String;
    :goto_2
    if-ge v11, v9, :cond_3

    .line 1028
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "_data"

    aput-object v5, v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id=\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v5, v8, v11

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1029
    if-nez v10, :cond_2

    .line 1030
    const-string v0, "MTPJNIInterface"

    const-string v2, "Cur is null but continue since checking for audio index"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    add-int/lit8 v11, v11, 0x1

    .line 1032
    goto :goto_2

    .line 1034
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1035
    const-string v0, "_data"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1036
    const-string v0, "|"

    invoke-virtual {v13, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1037
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1038
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1040
    :cond_3
    const-string v0, "MTPJNIInterface"

    const-string v2, "MTPJNIInterface,pipe seperated Path of playlist song "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public updateUiState(I)V
    .locals 2
    .parameter "notificationType"

    .prologue
    .line 326
    sget-object v1, Landroid/mtp/MTPJNIInterface;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 327
    sget-object v1, Landroid/mtp/MTPJNIInterface;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 328
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 329
    sget-object v1, Landroid/mtp/MTPJNIInterface;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 331
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method
