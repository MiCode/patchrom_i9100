.class final Landroid/app/ActivityManager$RecentTaskInfo$1;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager$RecentTaskInfo;
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
        "Landroid/app/ActivityManager$RecentTaskInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 482
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 2
    .parameter "source"

    .prologue
    .line 484
    new-instance v0, Landroid/app/ActivityManager$RecentTaskInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>(Landroid/os/Parcel;Landroid/app/ActivityManager$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 482
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$RecentTaskInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 487
    new-array v0, p1, [Landroid/app/ActivityManager$RecentTaskInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 482
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$RecentTaskInfo$1;->newArray(I)[Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    return-object v0
.end method
