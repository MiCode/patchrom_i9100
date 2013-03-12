.class Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputMethodAndSubtypeListManager"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mImms:Lcom/android/server/InputMethodManagerService;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mSortedImmis:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSystemLocaleStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/InputMethodManagerService;)V
    .locals 3
    .parameter "context"
    .parameter "imms"

    .prologue
    .line 3537
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3545
    new-instance v1, Ljava/util/TreeMap;

    new-instance v2, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager$1;

    invoke-direct {v2, p0}, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager$1;-><init>(Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;)V

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;->mSortedImmis:Ljava/util/TreeMap;

    .line 3538
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;->mContext:Landroid/content/Context;

    .line 3539
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;->mPm:Landroid/content/pm/PackageManager;

    .line 3540
    iput-object p2, p0, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;->mImms:Lcom/android/server/InputMethodManagerService;

    .line 3541
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3542
    .local v0, locale:Ljava/util/Locale;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;->mSystemLocaleStr:Ljava/lang/String;

    .line 3543
    return-void

    .line 3542
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method static synthetic access$2100(Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3532
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method


# virtual methods
.method public getNextInputMethod(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;
    .locals 10
    .parameter "onlyCurrentIme"
    .parameter "imi"
    .parameter "subtype"

    .prologue
    const/4 v7, 0x0

    .line 3563
    if-nez p2, :cond_1

    .line 3589
    :cond_0
    :goto_0
    return-object v7

    .line 3566
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;->getSortedInputMethodAndSubtypeList()Ljava/util/List;

    move-result-object v4

    .line 3567
    .local v4, imList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_0

    .line 3570
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 3571
    .local v0, N:I
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v8

    #calls: Lcom/android/server/InputMethodManagerService;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I
    invoke-static {p2, v8}, Lcom/android/server/InputMethodManagerService;->access$2200(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v2

    .line 3574
    .local v2, currentSubtypeId:I
    :goto_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v0, :cond_0

    .line 3575
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;

    .line 3576
    .local v5, isli:Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;
    iget-object v8, v5, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v8, p2}, Landroid/view/inputmethod/InputMethodInfo;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget v8, v5, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mSubtypeId:I

    if-ne v8, v2, :cond_5

    .line 3577
    if-nez p1, :cond_3

    .line 3578
    add-int/lit8 v7, v3, 0x1

    rem-int/2addr v7, v0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;

    goto :goto_0

    .line 3571
    .end local v2           #currentSubtypeId:I
    .end local v3           #i:I
    .end local v5           #isli:Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;
    :cond_2
    const/4 v2, -0x1

    goto :goto_1

    .line 3580
    .restart local v2       #currentSubtypeId:I
    .restart local v3       #i:I
    .restart local v5       #isli:Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;
    :cond_3
    const/4 v6, 0x0

    .local v6, j:I
    :goto_3
    add-int/lit8 v8, v0, -0x1

    if-ge v6, v8, :cond_0

    .line 3581
    add-int v8, v3, v6

    add-int/lit8 v8, v8, 0x1

    rem-int/2addr v8, v0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;

    .line 3582
    .local v1, candidate:Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;
    iget-object v8, v1, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v8, p2}, Landroid/view/inputmethod/InputMethodInfo;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v7, v1

    .line 3583
    goto :goto_0

    .line 3580
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 3574
    .end local v1           #candidate:Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;
    .end local v6           #j:I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public getSortedInputMethodAndSubtypeList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3593
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;->getSortedInputMethodAndSubtypeList(ZZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSortedInputMethodAndSubtypeList(ZZZ)Ljava/util/List;
    .locals 23
    .parameter "showSubtypes"
    .parameter "inputShown"
    .parameter "isScreenLocked"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3598
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 3599
    .local v17, imList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;->mImms:Lcom/android/server/InputMethodManagerService;

    #calls: Lcom/android/server/InputMethodManagerService;->getExplicitlyOrImplicitlyEnabledInputMethodsAndSubtypeListLocked()Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/InputMethodManagerService;->access$2300(Lcom/android/server/InputMethodManagerService;)Ljava/util/HashMap;

    move-result-object v18

    .line 3601
    .local v18, immis:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 3602
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v17

    .line 3645
    .end local v17           #imList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;>;"
    :goto_0
    return-object v17

    .line 3604
    .restart local v17       #imList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;->mSortedImmis:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->clear()V

    .line 3605
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;->mSortedImmis:Ljava/util/TreeMap;

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 3606
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;->mSortedImmis:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 3607
    .local v4, imi:Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v4, :cond_2

    .line 3608
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 3609
    .local v14, explicitlyOrImplicitlyEnabledSubtypeList:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 3610
    .local v13, enabledSubtypeSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/inputmethod/InputMethodSubtype;

    .line 3611
    .local v19, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {v19 .. v19}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3613
    .end local v19           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_3
    #calls: Lcom/android/server/InputMethodManagerService;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/InputMethodManagerService;->access$2400(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v22

    .line 3614
    .local v22, subtypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v1}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 3615
    .local v2, imeLabel:Ljava/lang/CharSequence;
    if-eqz p1, :cond_8

    invoke-virtual {v13}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 3616
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v20

    .line 3620
    .local v20, subtypeCount:I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_3
    move/from16 v0, v20

    if-ge v5, v0, :cond_2

    .line 3621
    invoke-virtual {v4, v5}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v19

    .line 3622
    .restart local v19       #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {v19 .. v19}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    .line 3624
    .local v21, subtypeHashCode:Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p2, :cond_4

    if-eqz p3, :cond_5

    :cond_4
    invoke-virtual/range {v19 .. v19}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v1

    if-nez v1, :cond_6

    .line 3626
    :cond_5
    invoke-virtual/range {v19 .. v19}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v3, 0x0

    .line 3630
    .local v3, subtypeLabel:Ljava/lang/CharSequence;
    :goto_4
    new-instance v1, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;

    invoke-virtual/range {v19 .. v19}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;->mSystemLocaleStr:Ljava/lang/String;

    invoke-direct/range {v1 .. v7}, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/inputmethod/InputMethodInfo;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3636
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 3620
    .end local v3           #subtypeLabel:Ljava/lang/CharSequence;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 3626
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v6, v7}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_4

    .line 3640
    .end local v5           #j:I
    .end local v19           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v20           #subtypeCount:I
    .end local v21           #subtypeHashCode:Ljava/lang/String;
    :cond_8
    new-instance v6, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;->mSystemLocaleStr:Ljava/lang/String;

    move-object v7, v2

    move-object v9, v4

    invoke-direct/range {v6 .. v12}, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/inputmethod/InputMethodInfo;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 3644
    .end local v2           #imeLabel:Ljava/lang/CharSequence;
    .end local v4           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v13           #enabledSubtypeSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v14           #explicitlyOrImplicitlyEnabledSubtypeList:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v22           #subtypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_9
    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto/16 :goto_0
.end method
