.class public Landroid/app/SpellScroll$SpellEffect;
.super Landroid/app/ExtraAttr$Owner;
.source "SpellScroll.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SpellScroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpellEffect"
.end annotation


# static fields
.field public static final EXTRA_ATTR_KEY_INTENT_FLAGS:Ljava/lang/String; = "flags"

.field public static final EXTRA_ATTR_KEY_INTENT_TYPE:Ljava/lang/String; = "type"

.field private static sIntentFlagTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1395
    const/4 v0, 0x0

    sput-object v0, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 1400
    invoke-direct {p0}, Landroid/app/ExtraAttr$Owner;-><init>()V

    .line 1394
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    .line 1401
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 1403
    invoke-direct {p0}, Landroid/app/ExtraAttr$Owner;-><init>()V

    .line 1394
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    .line 1404
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    .line 1405
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/SpellScroll$SpellEffect;->setIntent(Landroid/content/Intent;)V

    .line 1407
    :cond_0
    iget-object v0, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 1408
    return-void
.end method

.method private compileDataInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "source"
    .parameter "varName"
    .parameter "varValue"

    .prologue
    .line 1543
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1547
    :cond_0
    return-object p1
.end method

.method private static declared-synchronized convertIntentFlags(Ljava/lang/String;)I
    .locals 8
    .parameter "text"

    .prologue
    .line 1494
    const-class v5, Landroid/app/SpellScroll$SpellEffect;

    monitor-enter v5

    if-nez p0, :cond_1

    .line 1495
    const/4 v0, 0x0

    .line 1539
    :cond_0
    monitor-exit v5

    return v0

    .line 1498
    :cond_1
    const/4 v0, 0x0

    .line 1500
    .local v0, result:I
    :try_start_0
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    if-nez v4, :cond_2

    .line 1502
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    .line 1504
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_NO_HISTORY"

    const/high16 v7, 0x4000

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1505
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_SINGLE_TOP"

    const/high16 v7, 0x2000

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1506
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_NEW_TASK"

    const/high16 v7, 0x1000

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1507
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_MULTIPLE_TASK"

    const/high16 v7, 0x800

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1509
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_CLEAR_TOP"

    const/high16 v7, 0x400

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1510
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_FORWARD_RESULT"

    const/high16 v7, 0x200

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_PREVIOUS_IS_TOP"

    const/high16 v7, 0x100

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1512
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_EXCLUDE_FROM_RECENTS"

    const/high16 v7, 0x80

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1513
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_BROUGHT_TO_FRONT"

    const/high16 v7, 0x40

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1514
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_RESET_TASK_IF_NEEDED"

    const/high16 v7, 0x20

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1515
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_LAUNCHED_FROM_HISTORY"

    const/high16 v7, 0x10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET"

    const/high16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1518
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_NO_USER_ACTION"

    const/high16 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1519
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_REORDER_TO_FRONT"

    const/high16 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_NO_ANIMATION"

    const/high16 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1521
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_CLEAR_TASK"

    const v7, 0x8000

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1522
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_TASK_ON_HOME"

    const/16 v7, 0x4000

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1525
    :cond_2
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v4, "|"

    invoke-direct {v1, p0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    .local v1, st:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1528
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1530
    .local v2, token:Ljava/lang/String;
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1532
    .local v3, value:Ljava/lang/Integer;
    if-nez v3, :cond_3

    .line 1533
    const-string v4, "SpellScroll"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown flag found in \'flags\': ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1494
    .end local v1           #st:Ljava/util/StringTokenizer;
    .end local v2           #token:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/Integer;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1535
    .restart local v1       #st:Ljava/util/StringTokenizer;
    .restart local v2       #token:Ljava/lang/String;
    .restart local v3       #value:Ljava/lang/Integer;
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    or-int/2addr v0, v4

    goto :goto_0
.end method


# virtual methods
.method public compile(Ljava/util/List;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 21
    .parameter
    .parameter "userInput"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/SpellScroll$Ingredient;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 1551
    .local p1, compileSpec:Ljava/util/List;,"Ljava/util/List<Landroid/app/SpellScroll$Ingredient;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 1552
    new-instance v18, Ljava/lang/IllegalStateException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "No intent information in this spelleffect["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 1555
    :cond_0
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1557
    .local v3, compiled:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Landroid/app/SpellScroll$SpellEffect;->getIntentFlags()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1559
    invoke-virtual/range {p0 .. p0}, Landroid/app/SpellScroll$SpellEffect;->getIntentType()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_1

    .line 1560
    invoke-virtual/range {p0 .. p0}, Landroid/app/SpellScroll$SpellEffect;->getIntentType()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1563
    :cond_1
    if-nez p2, :cond_3

    .line 1640
    :cond_2
    :goto_0
    return-object v3

    .line 1567
    :cond_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/SpellScroll$Ingredient;

    .line 1568
    .local v15, spec:Landroid/app/SpellScroll$Ingredient;
    invoke-virtual {v15}, Landroid/app/SpellScroll$Ingredient;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1570
    .local v16, userInputValue:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v18

    if-eqz v18, :cond_4

    .line 1572
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1574
    .local v13, source:Ljava/lang/String;
    if-eqz v16, :cond_5

    .line 1575
    invoke-virtual {v15}, Landroid/app/SpellScroll$Ingredient;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v0, v13, v1, v2}, Landroid/app/SpellScroll$SpellEffect;->compileDataInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    .line 1579
    :cond_5
    invoke-virtual {v15}, Landroid/app/SpellScroll$Ingredient;->getDefaultValue()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_4

    .line 1581
    invoke-virtual {v15}, Landroid/app/SpellScroll$Ingredient;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v15}, Landroid/app/SpellScroll$Ingredient;->getDefaultValue()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v13, v1, v2}, Landroid/app/SpellScroll$SpellEffect;->compileDataInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    .line 1589
    .end local v13           #source:Ljava/lang/String;
    .end local v15           #spec:Landroid/app/SpellScroll$Ingredient;
    .end local v16           #userInputValue:Ljava/lang/String;
    :cond_6
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    if-eqz v18, :cond_2

    .line 1590
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    .line 1591
    .local v14, sourceExtras:Landroid/os/Bundle;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1593
    .local v5, compiledExtras:Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 1595
    .local v7, extraKey:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v8           #i$:Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1596
    .local v6, extKey:Ljava/lang/String;
    invoke-virtual {v14, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1598
    .local v12, rawExtraValue:Ljava/lang/String;
    if-eqz v12, :cond_7

    .line 1600
    const/4 v11, 0x0

    .line 1601
    .local v11, isSingleArray:Z
    const/4 v10, 0x0

    .line 1602
    .local v10, isArray:Z
    const-string v17, ""

    .line 1604
    .local v17, valueDelimiter:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/SpellScroll$Ingredient;

    .line 1606
    .restart local v15       #spec:Landroid/app/SpellScroll$Ingredient;
    invoke-virtual {v15}, Landroid/app/SpellScroll$Ingredient;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1607
    .restart local v16       #userInputValue:Ljava/lang/String;
    move-object v4, v12

    .line 1609
    .local v4, compiledExtraValue:Ljava/lang/String;
    if-eqz v16, :cond_a

    .line 1610
    invoke-virtual {v15}, Landroid/app/SpellScroll$Ingredient;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v0, v12, v1, v2}, Landroid/app/SpellScroll$SpellEffect;->compileDataInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1615
    :cond_9
    :goto_4
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 1616
    invoke-virtual {v15}, Landroid/app/SpellScroll$Ingredient;->isSingleArray()Z

    move-result v11

    .line 1617
    invoke-virtual {v15}, Landroid/app/SpellScroll$Ingredient;->isArray()Z

    move-result v10

    .line 1618
    invoke-virtual {v15}, Landroid/app/SpellScroll$Ingredient;->getValueDelimiter()Ljava/lang/String;

    move-result-object v17

    .line 1620
    move-object v12, v4

    goto :goto_3

    .line 1611
    :cond_a
    invoke-virtual {v15}, Landroid/app/SpellScroll$Ingredient;->getDefaultValue()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_9

    .line 1612
    invoke-virtual {v15}, Landroid/app/SpellScroll$Ingredient;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v15}, Landroid/app/SpellScroll$Ingredient;->getDefaultValue()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v12, v1, v2}, Landroid/app/SpellScroll$SpellEffect;->compileDataInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 1624
    .end local v4           #compiledExtraValue:Ljava/lang/String;
    .end local v15           #spec:Landroid/app/SpellScroll$Ingredient;
    .end local v16           #userInputValue:Ljava/lang/String;
    :cond_b
    if-eqz v11, :cond_c

    .line 1625
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v12, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1626
    :cond_c
    if-eqz v10, :cond_f

    .line 1627
    if-eqz v17, :cond_d

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_e

    :cond_d
    const-string v17, ";"

    .line 1629
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Landroid/app/SpellScroll$SpellEffect;->tokenizeValues(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1632
    :cond_f
    invoke-virtual {v5, v6, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1637
    .end local v6           #extKey:Ljava/lang/String;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #isArray:Z
    .end local v11           #isSingleArray:Z
    .end local v12           #rawExtraValue:Ljava/lang/String;
    .end local v17           #valueDelimiter:Ljava/lang/String;
    :cond_10
    invoke-virtual {v3, v5}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1451
    const/4 v0, 0x0

    return v0
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "pw"

    .prologue
    .line 1659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hashCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/SpellScroll$SpellEffect;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/SpellScroll$SpellEffect;->getIntentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/SpellScroll$SpellEffect;->getIntentFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1663
    invoke-virtual {p0}, Landroid/app/SpellScroll$SpellEffect;->getExtraAttrsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      mExtraAttrs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/SpellScroll$SpellEffect;->getExtraAttrsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1667
    :cond_0
    iget-object v0, p0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 1668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      Intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1670
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "otherObj"

    .prologue
    const/4 v1, 0x0

    .line 1427
    instance-of v2, p1, Landroid/app/SpellScroll$SpellEffect;

    if-nez v2, :cond_1

    .line 1446
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 1431
    check-cast v0, Landroid/app/SpellScroll$SpellEffect;

    .line 1433
    .local v0, other:Landroid/app/SpellScroll$SpellEffect;
    iget-object v2, p0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    if-nez v2, :cond_2

    iget-object v2, v0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    :cond_3
    iget-object v2, p0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1439
    :cond_4
    iget-object v2, p0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_5

    iget-object v2, v0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1446
    :cond_5
    invoke-super {p0, v0}, Landroid/app/ExtraAttr$Owner;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getIntentFlags()I
    .locals 2

    .prologue
    .line 1489
    iget-object v0, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    const-string v1, "flags"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/SpellScroll$SpellEffect;->convertIntentFlags(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getIntentType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1477
    iget-object v0, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1412
    invoke-super {p0}, Landroid/app/ExtraAttr$Owner;->hashCode()I

    move-result v0

    .line 1414
    .local v0, result:I
    iget-object v1, p0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 1415
    iget-object v1, p0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 1417
    iget-object v1, p0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1418
    iget-object v1, p0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 1422
    :cond_0
    return v0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1467
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    .line 1468
    return-void
.end method

.method tokenizeValues(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "source"
    .parameter "delimiter"

    .prologue
    .line 1644
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1646
    .local v2, validValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p1, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    .local v1, tokenizer:Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1649
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 1650
    .local v0, token:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1651
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1655
    .end local v0           #token:Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 1456
    iget-object v0, p0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 1457
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1463
    :goto_0
    iget-object v0, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1464
    return-void

    .line 1459
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1460
    iget-object v0, p0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0
.end method
