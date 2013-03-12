.class final Landroid/webkit/GeolocationService;
.super Ljava/lang/Object;
.source "GeolocationService.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "geolocationService"


# instance fields
.field private mIsGpsEnabled:Z

.field private mIsGpsProviderAvailable:Z

.field private mIsNetworkProviderAvailable:Z

.field private mIsRunning:Z

.field private mLocationManager:Landroid/location/LocationManager;

.field private mNativeObject:J


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "nativeObject"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-wide p2, p0, Landroid/webkit/GeolocationService;->mNativeObject:J

    .line 54
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Landroid/webkit/GeolocationService;->mLocationManager:Landroid/location/LocationManager;

    .line 55
    iget-object v0, p0, Landroid/webkit/GeolocationService;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 56
    const-string v0, "geolocationService"

    const-string v1, "Could not get location manager."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    return-void
.end method

.method private maybeReportError(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 193
    iget-boolean v0, p0, Landroid/webkit/GeolocationService;->mIsRunning:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/GeolocationService;->mIsNetworkProviderAvailable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/GeolocationService;->mIsGpsProviderAvailable:Z

    if-nez v0, :cond_0

    .line 194
    iget-wide v0, p0, Landroid/webkit/GeolocationService;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/webkit/GeolocationService;->nativeNewErrorAvailable(JLjava/lang/String;)V

    .line 196
    :cond_0
    return-void
.end method

.method private static native nativeNewErrorAvailable(JLjava/lang/String;)V
.end method

.method private static native nativeNewLocationAvailable(JLandroid/location/Location;)V
.end method

.method private registerForLocationUpdates()V
    .locals 7

    .prologue
    .line 162
    :try_start_0
    iget-object v0, p0, Landroid/webkit/GeolocationService;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/GeolocationService;->mIsNetworkProviderAvailable:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/GeolocationService;->mIsGpsEnabled:Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_0

    .line 167
    :try_start_2
    iget-object v0, p0, Landroid/webkit/GeolocationService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/GeolocationService;->mIsGpsProviderAvailable:Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 175
    :cond_0
    :goto_1
    return-void

    .line 171
    :catch_0
    move-exception v6

    .line 172
    .local v6, e:Ljava/lang/SecurityException;
    const-string v0, "geolocationService"

    const-string v1, "Caught security exception registering for location updates from system. This should only happen in DumpRenderTree."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 169
    .end local v6           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    goto :goto_1

    .line 164
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private unregisterFromLocationUpdates()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 181
    iget-object v0, p0, Landroid/webkit/GeolocationService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 182
    iput-boolean v1, p0, Landroid/webkit/GeolocationService;->mIsNetworkProviderAvailable:Z

    .line 183
    iput-boolean v1, p0, Landroid/webkit/GeolocationService;->mIsGpsProviderAvailable:Z

    .line 184
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 104
    iget-boolean v0, p0, Landroid/webkit/GeolocationService;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 105
    iget-wide v0, p0, Landroid/webkit/GeolocationService;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/webkit/GeolocationService;->nativeNewLocationAvailable(JLandroid/location/Location;)V

    .line 107
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .parameter "providerName"

    .prologue
    const/4 v1, 0x0

    .line 147
    const-string/jumbo v0, "network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iput-boolean v1, p0, Landroid/webkit/GeolocationService;->mIsNetworkProviderAvailable:Z

    .line 152
    :cond_0
    :goto_0
    const-string v0, "The last location provider was disabled"

    invoke-direct {p0, v0}, Landroid/webkit/GeolocationService;->maybeReportError(Ljava/lang/String;)V

    .line 153
    return-void

    .line 149
    :cond_1
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iput-boolean v1, p0, Landroid/webkit/GeolocationService;->mIsGpsProviderAvailable:Z

    goto :goto_0
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2
    .parameter "providerName"

    .prologue
    const/4 v1, 0x1

    .line 134
    const-string/jumbo v0, "network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iput-boolean v1, p0, Landroid/webkit/GeolocationService;->mIsNetworkProviderAvailable:Z

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iput-boolean v1, p0, Landroid/webkit/GeolocationService;->mIsGpsProviderAvailable:Z

    goto :goto_0
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2
    .parameter "providerName"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 117
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    .line 118
    .local v0, isAvailable:Z
    :goto_0
    const-string/jumbo v1, "network"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    iput-boolean v0, p0, Landroid/webkit/GeolocationService;->mIsNetworkProviderAvailable:Z

    .line 123
    :cond_0
    :goto_1
    const-string v1, "The last location provider is no longer available"

    invoke-direct {p0, v1}, Landroid/webkit/GeolocationService;->maybeReportError(Ljava/lang/String;)V

    .line 124
    return-void

    .line 117
    .end local v0           #isAvailable:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 120
    .restart local v0       #isAvailable:Z
    :cond_2
    const-string v1, "gps"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    iput-boolean v0, p0, Landroid/webkit/GeolocationService;->mIsGpsProviderAvailable:Z

    goto :goto_1
.end method

.method public setEnableGps(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 82
    iget-boolean v0, p0, Landroid/webkit/GeolocationService;->mIsGpsEnabled:Z

    if-eq v0, p1, :cond_0

    .line 83
    iput-boolean p1, p0, Landroid/webkit/GeolocationService;->mIsGpsEnabled:Z

    .line 84
    iget-boolean v0, p0, Landroid/webkit/GeolocationService;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 87
    invoke-direct {p0}, Landroid/webkit/GeolocationService;->unregisterFromLocationUpdates()V

    .line 88
    invoke-direct {p0}, Landroid/webkit/GeolocationService;->registerForLocationUpdates()V

    .line 90
    const-string v0, "The last location provider is no longer available"

    invoke-direct {p0, v0}, Landroid/webkit/GeolocationService;->maybeReportError(Ljava/lang/String;)V

    .line 93
    :cond_0
    return-void
.end method

.method public start()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 64
    invoke-direct {p0}, Landroid/webkit/GeolocationService;->registerForLocationUpdates()V

    .line 65
    iput-boolean v0, p0, Landroid/webkit/GeolocationService;->mIsRunning:Z

    .line 66
    iget-boolean v1, p0, Landroid/webkit/GeolocationService;->mIsNetworkProviderAvailable:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/webkit/GeolocationService;->mIsGpsProviderAvailable:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/webkit/GeolocationService;->unregisterFromLocationUpdates()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/GeolocationService;->mIsRunning:Z

    .line 75
    return-void
.end method
