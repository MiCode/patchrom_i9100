.class Lcom/android/settings/wifi/mobileap/WifiApAllowedList$6;
.super Ljava/lang/Object;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "arg0"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 195
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 196
    .local v0, action:I
    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 197
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteButton:Landroid/view/View;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$500(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/HoverPopupWindow;->setHoveringPoint(II)V

    .line 198
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteButton:Landroid/view/View;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$500(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$200(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteButton:Landroid/view/View;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$500(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/HoverPopupWindow;->show(I)V

    .line 203
    :cond_0
    :goto_0
    return v4

    .line 200
    :cond_1
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteButton:Landroid/view/View;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$500(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/HoverPopupWindow;->dismiss()V

    goto :goto_0
.end method
