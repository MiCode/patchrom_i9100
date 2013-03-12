.class final Lcom/android/server/MountService$7;
.super Ljava/lang/Object;
.source "MountService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->sortByValue(Ljava/util/Map;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$m:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .parameter

    .prologue
    .line 3224
    iput-object p1, p0, Lcom/android/server/MountService$7;->val$m:Ljava/util/Map;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .parameter "o1"
    .parameter "o2"

    .prologue
    const/4 v2, 0x0

    .line 3226
    iget-object v3, p0, Lcom/android/server/MountService$7;->val$m:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3227
    .local v0, v1:Ljava/lang/Object;
    iget-object v3, p0, Lcom/android/server/MountService$7;->val$m:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3228
    .local v1, v2:Ljava/lang/Object;
    if-nez v0, :cond_2

    .line 3229
    if-nez v1, :cond_1

    .line 3235
    .end local v1           #v2:Ljava/lang/Object;
    :cond_0
    :goto_0
    return v2

    .line 3229
    .restart local v1       #v2:Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 3231
    :cond_2
    instance-of v3, v1, Ljava/lang/Comparable;

    if-eqz v3, :cond_0

    .line 3232
    check-cast v1, Ljava/lang/Comparable;

    .end local v1           #v2:Ljava/lang/Object;
    invoke-interface {v1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    goto :goto_0
.end method
