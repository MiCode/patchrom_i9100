.class Lcom/android/settings/motion2013/SMotionGuideHub$1;
.super Ljava/lang/Object;
.source "SMotionGuideHub.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/motion2013/SMotionGuideHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2013/SMotionGuideHub;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/settings/motion2013/SMotionGuideHub$1;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub$1;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    invoke-virtual {v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub$1;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    #getter for: Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$000(Lcom/android/settings/motion2013/SMotionGuideHub;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub$1;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    #calls: Lcom/android/settings/motion2013/SMotionGuideHub;->showMotionDialog()V
    invoke-static {v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$100(Lcom/android/settings/motion2013/SMotionGuideHub;)V

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub$1;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub$1;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    #getter for: Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$200(Lcom/android/settings/motion2013/SMotionGuideHub;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/settings/motion2013/SMotionGuideHub;->startTryActually(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$300(Lcom/android/settings/motion2013/SMotionGuideHub;Ljava/lang/String;)V

    goto :goto_0
.end method
