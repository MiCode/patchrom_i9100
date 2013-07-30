.class Lcom/android/sec_settings/motion2013/SMotionGuideHub$2;
.super Ljava/lang/Object;
.source "SMotionGuideHub.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/motion2013/SMotionGuideHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/motion2013/SMotionGuideHub;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/motion2013/SMotionGuideHub;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub$2;->this$0:Lcom/android/sec_settings/motion2013/SMotionGuideHub;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub$2;->this$0:Lcom/android/sec_settings/motion2013/SMotionGuideHub;

    iget-object v1, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub$2;->this$0:Lcom/android/sec_settings/motion2013/SMotionGuideHub;

    #getter for: Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->access$200(Lcom/android/sec_settings/motion2013/SMotionGuideHub;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->startAdvancedSettings(Ljava/lang/String;)V

    .line 138
    return-void
.end method
