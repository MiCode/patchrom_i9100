.class Lcom/android/server/location/LocationBasedCountryDetector$3;
.super Ljava/lang/Object;
.source "LocationBasedCountryDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/LocationBasedCountryDetector;->queryCountryCode(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LocationBasedCountryDetector;

.field final synthetic val$location:Landroid/location/Location;


# direct methods
.method constructor <init>(Lcom/android/server/location/LocationBasedCountryDetector;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/server/location/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    iput-object p2, p0, Lcom/android/server/location/LocationBasedCountryDetector$3;->val$location:Landroid/location/Location;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, countryIso:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/location/LocationBasedCountryDetector$3;->val$location:Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/android/server/location/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector$3;->val$location:Landroid/location/Location;

    invoke-virtual {v1, v2}, Lcom/android/server/location/LocationBasedCountryDetector;->getCountryFromLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    .line 232
    :cond_0
    if-eqz v0, :cond_1

    .line 233
    iget-object v1, p0, Lcom/android/server/location/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    new-instance v2, Landroid/location/Country;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Landroid/location/Country;-><init>(Ljava/lang/String;I)V

    iput-object v2, v1, Lcom/android/server/location/CountryDetectorBase;->mDetectedCountry:Landroid/location/Country;

    .line 237
    :goto_0
    iget-object v1, p0, Lcom/android/server/location/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    iget-object v2, v2, Lcom/android/server/location/CountryDetectorBase;->mDetectedCountry:Landroid/location/Country;

    invoke-virtual {v1, v2}, Lcom/android/server/location/LocationBasedCountryDetector;->notifyListener(Landroid/location/Country;)V

    .line 238
    iget-object v1, p0, Lcom/android/server/location/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    iput-object v4, v1, Lcom/android/server/location/LocationBasedCountryDetector;->mQueryThread:Ljava/lang/Thread;

    .line 239
    return-void

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/android/server/location/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    iput-object v4, v1, Lcom/android/server/location/CountryDetectorBase;->mDetectedCountry:Landroid/location/Country;

    goto :goto_0
.end method
