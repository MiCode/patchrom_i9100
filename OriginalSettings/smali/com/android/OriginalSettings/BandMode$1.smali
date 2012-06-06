.class Lcom/android/OriginalSettings/BandMode$1;
.super Ljava/lang/Object;
.source "BandMode.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/BandMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/BandMode;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/BandMode;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/OriginalSettings/BandMode$1;->this$0:Lcom/android/OriginalSettings/BandMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 86
    iget-object v1, p0, Lcom/android/OriginalSettings/BandMode$1;->this$0:Lcom/android/OriginalSettings/BandMode;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/BandMode;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFeatureInt(II)V

    .line 90
    iget-object v2, p0, Lcom/android/OriginalSettings/BandMode$1;->this$0:Lcom/android/OriginalSettings/BandMode;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/BandMode$BandListItem;

    #setter for: Lcom/android/OriginalSettings/BandMode;->mTargetBand:Lcom/android/OriginalSettings/BandMode$BandListItem;
    invoke-static {v2, v1}, Lcom/android/OriginalSettings/BandMode;->access$002(Lcom/android/OriginalSettings/BandMode;Lcom/android/OriginalSettings/BandMode$BandListItem;)Lcom/android/OriginalSettings/BandMode$BandListItem;

    .line 94
    iget-object v1, p0, Lcom/android/OriginalSettings/BandMode$1;->this$0:Lcom/android/OriginalSettings/BandMode;

    #getter for: Lcom/android/OriginalSettings/BandMode;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/OriginalSettings/BandMode;->access$100(Lcom/android/OriginalSettings/BandMode;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 96
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/OriginalSettings/BandMode$1;->this$0:Lcom/android/OriginalSettings/BandMode;

    #getter for: Lcom/android/OriginalSettings/BandMode;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/OriginalSettings/BandMode;->access$200(Lcom/android/OriginalSettings/BandMode;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/BandMode$1;->this$0:Lcom/android/OriginalSettings/BandMode;

    #getter for: Lcom/android/OriginalSettings/BandMode;->mTargetBand:Lcom/android/OriginalSettings/BandMode$BandListItem;
    invoke-static {v2}, Lcom/android/OriginalSettings/BandMode;->access$000(Lcom/android/OriginalSettings/BandMode;)Lcom/android/OriginalSettings/BandMode$BandListItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/OriginalSettings/BandMode$BandListItem;->getBand()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/Phone;->setBandMode(ILandroid/os/Message;)V

    .line 97
    return-void
.end method
