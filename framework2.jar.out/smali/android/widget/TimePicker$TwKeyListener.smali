.class Landroid/widget/TimePicker$TwKeyListener;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwKeyListener"
.end annotation


# instance fields
.field private mNext:I

.field final synthetic this$0:Landroid/widget/TimePicker;


# direct methods
.method public constructor <init>(Landroid/widget/TimePicker;I)V
    .locals 0
    .parameter
    .parameter "next_id"

    .prologue
    .line 717
    iput-object p1, p0, Landroid/widget/TimePicker$TwKeyListener;->this$0:Landroid/widget/TimePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 718
    iput p2, p0, Landroid/widget/TimePicker$TwKeyListener;->mNext:I

    .line 719
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 722
    iget-object v2, p0, Landroid/widget/TimePicker$TwKeyListener;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->TW_DEBUG:Z
    invoke-static {v2}, Landroid/widget/TimePicker;->access$800(Landroid/widget/TimePicker;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Picker"

    invoke-virtual {p3}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 732
    :goto_0
    return v0

    .line 725
    :cond_1
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 730
    goto :goto_0

    .line 725
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x3d -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
