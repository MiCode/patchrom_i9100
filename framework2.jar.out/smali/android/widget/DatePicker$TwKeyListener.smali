.class Landroid/widget/DatePicker$TwKeyListener;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwKeyListener"
.end annotation


# instance fields
.field private mNext:I

.field final synthetic this$0:Landroid/widget/DatePicker;


# direct methods
.method public constructor <init>(Landroid/widget/DatePicker;I)V
    .locals 0
    .parameter
    .parameter "next_id"

    .prologue
    .line 1069
    iput-object p1, p0, Landroid/widget/DatePicker$TwKeyListener;->this$0:Landroid/widget/DatePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1070
    iput p2, p0, Landroid/widget/DatePicker$TwKeyListener;->mNext:I

    .line 1071
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

    .line 1074
    iget-object v2, p0, Landroid/widget/DatePicker$TwKeyListener;->this$0:Landroid/widget/DatePicker;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Landroid/widget/DatePicker;->twLog(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/widget/DatePicker;->access$1600(Landroid/widget/DatePicker;Ljava/lang/String;)V

    .line 1075
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 1084
    :goto_0
    return v0

    .line 1077
    :cond_0
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 1082
    goto :goto_0

    .line 1077
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x3d -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
