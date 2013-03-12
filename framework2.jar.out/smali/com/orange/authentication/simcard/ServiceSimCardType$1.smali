.class final Lcom/orange/authentication/simcard/ServiceSimCardType$1;
.super Ljava/lang/Object;
.source "ServiceSimCardType.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/orange/authentication/simcard/ServiceSimCardType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/orange/authentication/simcard/ServiceSimCardType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/orange/authentication/simcard/ServiceSimCardType;
    .locals 2
    .parameter "in"

    .prologue
    .line 128
    new-instance v0, Lcom/orange/authentication/simcard/ServiceSimCardType;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Landroid/os/Parcel;Lcom/orange/authentication/simcard/ServiceSimCardType$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/orange/authentication/simcard/ServiceSimCardType$1;->createFromParcel(Landroid/os/Parcel;)Lcom/orange/authentication/simcard/ServiceSimCardType;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/orange/authentication/simcard/ServiceSimCardType;
    .locals 1
    .parameter "size"

    .prologue
    .line 132
    new-array v0, p1, [Lcom/orange/authentication/simcard/ServiceSimCardType;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/orange/authentication/simcard/ServiceSimCardType$1;->newArray(I)[Lcom/orange/authentication/simcard/ServiceSimCardType;

    move-result-object v0

    return-object v0
.end method
