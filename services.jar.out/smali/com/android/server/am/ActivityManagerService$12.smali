.class final Lcom/android/server/am/ActivityManagerService$12;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->dumpProcessOomList(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityManagerService;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/util/Pair",
        "<",
        "Lcom/android/server/am/ProcessRecord;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9530
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, object1:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;"
    .local p2, object2:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;"
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 9534
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-eq v3, v0, :cond_1

    .line 9535
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-le v3, v0, :cond_0

    move v0, v1

    .line 9540
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 9535
    goto :goto_0

    .line 9537
    :cond_1
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v3, v0, :cond_3

    .line 9538
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v3, v0, :cond_2

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 9540
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9530
    check-cast p1, Landroid/util/Pair;

    .end local p1
    check-cast p2, Landroid/util/Pair;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService$12;->compare(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result v0

    return v0
.end method
