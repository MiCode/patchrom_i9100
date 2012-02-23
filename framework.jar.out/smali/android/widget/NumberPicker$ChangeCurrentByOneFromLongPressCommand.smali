.class Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private mIncrement:Z

.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1986
    iput-object p1, p0, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroid/widget/NumberPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1986
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->setIncrement(Z)V

    return-void
.end method

.method private setIncrement(Z)V
    .locals 0
    .parameter "increment"

    .prologue
    .line 1990
    iput-boolean p1, p0, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    .line 1991
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1994
    iget-object v0, p0, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroid/widget/NumberPicker;

    iget-boolean v1, p0, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    #calls: Landroid/widget/NumberPicker;->changeCurrentByOne(Z)V
    invoke-static {v0, v1}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;Z)V

    .line 1995
    iget-object v0, p0, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$2100(Landroid/widget/NumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1996
    return-void
.end method
