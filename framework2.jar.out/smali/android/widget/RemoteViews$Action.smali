.class abstract Landroid/widget/RemoteViews$Action;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Action"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 205
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/RemoteViews$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 205
    invoke-direct {p0}, Landroid/widget/RemoteViews$Action;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V
    .locals 0
    .parameter "bitmapCache"

    .prologue
    .line 224
    return-void
.end method

.method public updateMemoryUsageEstimate(Landroid/widget/RemoteViews$MemoryUsageCounter;)V
    .locals 0
    .parameter "counter"

    .prologue
    .line 219
    return-void
.end method
