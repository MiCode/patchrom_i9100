.class Lcom/android/OriginalSettings/MasterClear$2;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/MasterClear;->establishInitialState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/MasterClear;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/MasterClear;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/OriginalSettings/MasterClear$2;->this$0:Lcom/android/OriginalSettings/MasterClear;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/OriginalSettings/MasterClear$2;->this$0:Lcom/android/OriginalSettings/MasterClear;

    #getter for: Lcom/android/OriginalSettings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/OriginalSettings/MasterClear;->access$200(Lcom/android/OriginalSettings/MasterClear;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 196
    return-void
.end method
