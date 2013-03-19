.class public Lcom/sec/android/app/camera/ReverseGeocoderTask;
.super Landroid/os/AsyncTask;
.source "ReverseGeocoderTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/ReverseGeocoderTask$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "ReverseGeocoder"


# instance fields
.field private mCallback:Lcom/sec/android/app/camera/ReverseGeocoderTask$Callback;

.field private mGeocoder:Landroid/location/Geocoder;

.field private mLat:D

.field private mLng:D


# direct methods
.method public constructor <init>(Landroid/location/Geocoder;[DLcom/sec/android/app/camera/ReverseGeocoderTask$Callback;)V
    .locals 2
    .parameter "geocoder"
    .parameter "latlng"
    .parameter "callback"

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/sec/android/app/camera/ReverseGeocoderTask;->mGeocoder:Landroid/location/Geocoder;

    .line 63
    const/4 v0, 0x0

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/ReverseGeocoderTask;->mLat:D

    .line 64
    const/4 v0, 0x1

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/ReverseGeocoderTask;->mLng:D

    .line 65
    iput-object p3, p0, Lcom/sec/android/app/camera/ReverseGeocoderTask;->mCallback:Lcom/sec/android/app/camera/ReverseGeocoderTask$Callback;

    .line 66
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/ReverseGeocoderTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 13
    .parameter "params"

    .prologue
    .line 70
    const-string v12, ""

    .line 72
    .local v12, value:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ReverseGeocoderTask;->mGeocoder:Landroid/location/Geocoder;

    iget-wide v1, p0, Lcom/sec/android/app/camera/ReverseGeocoderTask;->mLat:D

    iget-wide v3, p0, Lcom/sec/android/app/camera/ReverseGeocoderTask;->mLng:D

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v7

    .line 74
    .local v7, address:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .local v11, sb:Ljava/lang/StringBuilder;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Address;

    .line 76
    .local v6, addr:Landroid/location/Address;
    invoke-virtual {v6}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v10

    .line 77
    .local v10, index:I
    invoke-virtual {v6}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 85
    .end local v6           #addr:Landroid/location/Address;
    .end local v7           #address:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #index:I
    .end local v11           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v8

    .line 86
    .local v8, ex:Ljava/io/IOException;
    const-string v12, ""

    .line 87
    const-string v0, "ReverseGeocoder"

    const-string v1, "Geocoder exception: "

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .end local v8           #ex:Ljava/io/IOException;
    :cond_0
    :goto_1
    return-object v12

    .line 79
    .restart local v7       #address:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v11       #sb:Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 82
    const-string v0, "null"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const-string v12, ""
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 88
    .end local v7           #address:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v11           #sb:Ljava/lang/StringBuilder;
    :catch_1
    move-exception v8

    .line 89
    .local v8, ex:Ljava/lang/RuntimeException;
    const-string v12, ""

    .line 90
    const-string v0, "ReverseGeocoder"

    const-string v1, "Geocoder exception: "

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/ReverseGeocoderTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/ReverseGeocoderTask;->mCallback:Lcom/sec/android/app/camera/ReverseGeocoderTask$Callback;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/ReverseGeocoderTask$Callback;->onComplete(Ljava/lang/String;)V

    .line 98
    return-void
.end method
