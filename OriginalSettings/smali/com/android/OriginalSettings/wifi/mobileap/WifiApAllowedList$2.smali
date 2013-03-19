.class Lcom/android/settings/wifi/mobileap/WifiApAllowedList$2;
.super Ljava/lang/Object;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

.field final synthetic val$screenWidth:I


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$2;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    iput p2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$2;->val$screenWidth:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 149
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$2;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$200(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0902d5

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 150
    .local v0, hintToast:Landroid/widget/Toast;
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 151
    .local v1, screenPos:[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 152
    const/16 v2, 0x35

    iget v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$2;->val$screenWidth:I

    aget v4, v1, v4

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 154
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 155
    const/4 v2, 0x1

    return v2
.end method
