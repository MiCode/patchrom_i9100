.class Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetOnLongClickPendingIntent"
.end annotation


# static fields
.field public static final TAG:I = 0x10


# instance fields
.field downPendingIntent:Landroid/app/PendingIntent;

.field key:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field upPendingIntent:Landroid/app/PendingIntent;

.field viewId:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/IBinder;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 1
    .parameter
    .parameter "key"
    .parameter "id"
    .parameter "downPendingIntent"
    .parameter "upPendingIntent"

    .prologue
    .line 2360
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 2361
    iput-object p2, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->key:Landroid/os/IBinder;

    .line 2362
    iput p3, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->viewId:I

    .line 2363
    iput-object p4, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->downPendingIntent:Landroid/app/PendingIntent;

    .line 2364
    iput-object p5, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->upPendingIntent:Landroid/app/PendingIntent;

    .line 2365
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .parameter
    .parameter "parcel"

    .prologue
    .line 2367
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 2368
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->key:Landroid/os/IBinder;

    .line 2369
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->viewId:I

    .line 2370
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->downPendingIntent:Landroid/app/PendingIntent;

    .line 2371
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->upPendingIntent:Landroid/app/PendingIntent;

    .line 2372
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 5
    .parameter "root"
    .parameter "rootParent"
    .parameter "handler"

    .prologue
    .line 2384
    iget v4, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->viewId:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2385
    .local v2, target:Landroid/view/View;
    if-eqz v2, :cond_0

    iget-object v4, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->downPendingIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->upPendingIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_0

    .line 2386
    new-instance v1, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$1;

    invoke-direct {v1, p0}, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$1;-><init>(Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;)V

    .line 2403
    .local v1, longClickListener:Landroid/view/View$OnLongClickListener;
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2405
    new-instance v3, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$2;

    invoke-direct {v3, p0}, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$2;-><init>(Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;)V

    .line 2458
    .local v3, touchListener:Landroid/view/View$OnTouchListener;
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2460
    new-instance v0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$3;

    invoke-direct {v0, p0}, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$3;-><init>(Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;)V

    .line 2493
    .local v0, keyListener:Landroid/view/View$OnKeyListener;
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2495
    .end local v0           #keyListener:Landroid/view/View$OnKeyListener;
    .end local v1           #longClickListener:Landroid/view/View$OnLongClickListener;
    .end local v3           #touchListener:Landroid/view/View$OnTouchListener;
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 2375
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2376
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->key:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2377
    iget v0, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2378
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->downPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2379
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->upPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2380
    return-void
.end method
