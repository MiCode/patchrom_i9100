.class Lcom/android/server/LocationManagerService$LpCapabilityComparator;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LpCapabilityComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/location/LocationProviderInterface;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALTITUDE_SCORE:I = 0x4

.field private static final BEARING_SCORE:I = 0x4

.field private static final SPEED_SCORE:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 927
    iput-object p1, p0, Lcom/android/server/LocationManagerService$LpCapabilityComparator;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 927
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService$LpCapabilityComparator;-><init>(Lcom/android/server/LocationManagerService;)V

    return-void
.end method

.method private score(Lcom/android/server/location/LocationProviderInterface;)I
    .locals 4
    .parameter "p"

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 934
    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->supportsAltitude()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->supportsBearing()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    :goto_1
    add-int/2addr v0, v3

    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->supportsSpeed()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public compare(Lcom/android/server/location/LocationProviderInterface;Lcom/android/server/location/LocationProviderInterface;)I
    .locals 2
    .parameter "l1"
    .parameter "l2"

    .prologue
    .line 940
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService$LpCapabilityComparator;->score(Lcom/android/server/location/LocationProviderInterface;)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService$LpCapabilityComparator;->score(Lcom/android/server/location/LocationProviderInterface;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 927
    check-cast p1, Lcom/android/server/location/LocationProviderInterface;

    .end local p1
    check-cast p2, Lcom/android/server/location/LocationProviderInterface;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LocationManagerService$LpCapabilityComparator;->compare(Lcom/android/server/location/LocationProviderInterface;Lcom/android/server/location/LocationProviderInterface;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/android/server/location/LocationProviderInterface;Lcom/android/server/location/LocationProviderInterface;)Z
    .locals 2
    .parameter "l1"
    .parameter "l2"

    .prologue
    .line 944
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService$LpCapabilityComparator;->score(Lcom/android/server/location/LocationProviderInterface;)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService$LpCapabilityComparator;->score(Lcom/android/server/location/LocationProviderInterface;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
