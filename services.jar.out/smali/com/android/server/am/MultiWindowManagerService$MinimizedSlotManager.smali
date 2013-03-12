.class Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;
.super Ljava/lang/Object;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MinimizedSlotManager"
.end annotation


# instance fields
.field private mSlots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/am/MultiWindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiWindowManagerService;)V
    .locals 1
    .parameter

    .prologue
    .line 910
    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 911
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->mSlots:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method clearSlots()V
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 930
    return-void
.end method

.method getSlot()I
    .locals 4

    .prologue
    .line 914
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 915
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 916
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 921
    .end local v1           #i:I
    :goto_1
    return v1

    .line 915
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 920
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->mSlots:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v0

    .line 921
    goto :goto_1
.end method

.method setSlot(IZ)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 925
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->mSlots:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 926
    return-void
.end method
