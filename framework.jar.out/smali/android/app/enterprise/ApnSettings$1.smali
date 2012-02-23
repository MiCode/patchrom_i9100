.class final Landroid/app/enterprise/ApnSettings$1;
.super Ljava/lang/Object;
.source "ApnSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/ApnSettings;
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
        "Landroid/app/enterprise/ApnSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/enterprise/ApnSettings;
    .locals 2
    .parameter "in"

    .prologue
    .line 95
    new-instance v0, Landroid/app/enterprise/ApnSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/enterprise/ApnSettings;-><init>(Landroid/os/Parcel;Landroid/app/enterprise/ApnSettings$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Landroid/app/enterprise/ApnSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/enterprise/ApnSettings;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/enterprise/ApnSettings;
    .locals 1
    .parameter "size"

    .prologue
    .line 103
    new-array v0, p1, [Landroid/app/enterprise/ApnSettings;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Landroid/app/enterprise/ApnSettings$1;->newArray(I)[Landroid/app/enterprise/ApnSettings;

    move-result-object v0

    return-object v0
.end method
