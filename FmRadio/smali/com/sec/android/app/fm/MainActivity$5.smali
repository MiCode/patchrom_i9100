.class Lcom/sec/android/app/fm/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/MainActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 964
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "arg1"

    .prologue
    const/4 v1, 0x0

    .line 967
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 983
    :goto_0
    return v1

    .line 970
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 973
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iput-boolean v1, v0, Lcom/sec/android/app/fm/MainActivity;->mPrevDown:Z

    .line 974
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$5;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iput-boolean v1, v0, Lcom/sec/android/app/fm/MainActivity;->mNextDown:Z

    goto :goto_0

    .line 967
    :pswitch_data_0
    .packed-switch 0x7f07005d
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 970
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
