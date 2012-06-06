.class Lcom/android/OriginalSettings/RadioInfo$19;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 988
    iput-object p1, p0, Lcom/android/OriginalSettings/RadioInfo$19;->this$0:Lcom/android/OriginalSettings/RadioInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 990
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo$19;->this$0:Lcom/android/OriginalSettings/RadioInfo;

    #calls: Lcom/android/OriginalSettings/RadioInfo;->updatePingState()V
    invoke-static {v0}, Lcom/android/OriginalSettings/RadioInfo;->access$3800(Lcom/android/OriginalSettings/RadioInfo;)V

    .line 991
    return-void
.end method
