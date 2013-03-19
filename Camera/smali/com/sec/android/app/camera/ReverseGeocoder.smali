.class public Lcom/sec/android/app/camera/ReverseGeocoder;
.super Ljava/lang/Object;
.source "ReverseGeocoder.java"

# interfaces
.implements Lcom/sec/android/app/camera/ReverseGeocoderTask$Callback;


# instance fields
.field private TAG:Ljava/lang/String;

.field protected mCancelled:Z

.field protected mCurrentAddress:Ljava/lang/String;

.field private mGeocoder:Landroid/location/Geocoder;

.field protected mPrevAddress:Ljava/lang/String;

.field protected mPrevLatitude:D

.field protected mPrevLongitude:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const-wide/16 v1, 0x0

    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "ReverseGeocoder"

    iput-object v0, p0, Lcom/sec/android/app/camera/ReverseGeocoder;->TAG:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/ReverseGeocoder;->mCurrentAddress:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/ReverseGeocoder;->mPrevAddress:Ljava/lang/String;

    .line 37
    iput-wide v1, p0, Lcom/sec/android/app/camera/ReverseGeocoder;->mPrevLatitude:D

    .line 38
    iput-wide v1, p0, Lcom/sec/android/app/camera/ReverseGeocoder;->mPrevLongitude:D

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/ReverseGeocoder;->mCancelled:Z

    .line 43
    new-instance v0, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ReverseGeocoder;->mGeocoder:Landroid/location/Geocoder;

    .line 44
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/ReverseGeocoder;->mCancelled:Z

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/ReverseGeocoder;->mCurrentAddress:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public execute([D)V
    .locals 8
    .parameter "location"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 56
    aget-wide v2, p1, v6

    iget-wide v4, p0, Lcom/sec/android/app/camera/ReverseGeocoder;->mPrevLatitude:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    aget-wide v2, p1, v7

    iget-wide v4, p0, Lcom/sec/android/app/camera/ReverseGeocoder;->mPrevLongitude:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_2

    .line 57
    :cond_0
    aget-wide v2, p1, v6

    iput-wide v2, p0, Lcom/sec/android/app/camera/ReverseGeocoder;->mPrevLatitude:D

    .line 58
    aget-wide v2, p1, v7

    iput-wide v2, p0, Lcom/sec/android/app/camera/ReverseGeocoder;->mPrevLongitude:D

    .line 60
    new-instance v1, Lcom/sec/android/app/camera/ReverseGeocoderTask;

    iget-object v2, p0, Lcom/sec/android/app/camera/ReverseGeocoder;->mGeocoder:Landroid/location/Geocoder;

    invoke-direct {v1, v2, p1, p0}, Lcom/sec/android/app/camera/ReverseGeocoderTask;-><init>(Landroid/location/Geocoder;[DLcom/sec/android/app/camera/ReverseGeocoderTask$Callback;)V

    .line 62
    .local v1, geoTask:Lcom/sec/android/app/camera/ReverseGeocoderTask;
    if-eqz v1, :cond_1

    .line 64
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/sec/android/app/camera/ReverseGeocoder;->mCancelled:Z

    .line 65
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/ReverseGeocoderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v1           #geoTask:Lcom/sec/android/app/camera/ReverseGeocoderTask;
    :cond_1
    :goto_0
    return-void

    .line 66
    .restart local v1       #geoTask:Lcom/sec/android/app/camera/ReverseGeocoderTask;
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Ljava/lang/IllegalStateException;
    iget-object v2, p0, Lcom/sec/android/app/camera/ReverseGeocoder;->TAG:Ljava/lang/String;

    const-string v3, "Duplicated execution"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 71
    .end local v0           #e:Ljava/lang/IllegalStateException;
    .end local v1           #geoTask:Lcom/sec/android/app/camera/ReverseGeocoderTask;
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/ReverseGeocoder;->mPrevAddress:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/app/camera/ReverseGeocoder;->mCurrentAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCurrentAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/camera/ReverseGeocoder;->mCurrentAddress:Ljava/lang/String;

    return-object v0
.end method

.method public onComplete(Ljava/lang/String;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/sec/android/app/camera/ReverseGeocoder;->mCancelled:Z

    if-eqz v0, :cond_0

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/ReverseGeocoder;->mCurrentAddress:Ljava/lang/String;

    .line 53
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ReverseGeocoder;->mCurrentAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/ReverseGeocoder;->mPrevAddress:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/sec/android/app/camera/ReverseGeocoder;->mCurrentAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public resetCurrentAddress()V
    .locals 1

    .prologue
    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/ReverseGeocoder;->mCurrentAddress:Ljava/lang/String;

    .line 86
    return-void
.end method
