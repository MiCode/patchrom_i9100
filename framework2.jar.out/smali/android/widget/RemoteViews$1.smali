.class final Landroid/widget/RemoteViews$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
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
        "Landroid/widget/RemoteViews;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2270
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/widget/RemoteViews;
    .locals 1
    .parameter "parcel"

    .prologue
    .line 2272
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-direct {v0, p1}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2270
    invoke-virtual {p0, p1}, Landroid/widget/RemoteViews$1;->createFromParcel(Landroid/os/Parcel;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/widget/RemoteViews;
    .locals 1
    .parameter "size"

    .prologue
    .line 2276
    new-array v0, p1, [Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2270
    invoke-virtual {p0, p1}, Landroid/widget/RemoteViews$1;->newArray(I)[Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method
