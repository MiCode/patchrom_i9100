.class public Lcom/android/server/enterprise/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final BLACKLIST:Ljava/lang/String; = "BLACKLIST"

.field public static final WHITELIST:Ljava/lang/String; = "WHITELIST"

.field public static mLogEnbaled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getNumWildcardSets(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Object;)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;",
            "Ljava/util/Set",
            "<TT;>;TT;)I"
        }
    .end annotation

    .prologue
    .line 489
    .local p0, a:Ljava/util/Set;,"Ljava/util/Set<TT;>;"
    .local p1, b:Ljava/util/Set;,"Ljava/util/Set<TT;>;"
    .local p2, wildcardEntry:Ljava/lang/Object;,"TT;"
    if-eqz p2, :cond_2

    .line 491
    const/4 v0, 0x0

    .line 493
    .local v0, count:I
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 495
    add-int/lit8 v0, v0, 0x1

    .line 497
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 499
    add-int/lit8 v0, v0, 0x1

    .line 505
    .end local v0           #count:I
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBlacklisted(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<TT;>;>;TT;TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, effective:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    .local p1, wildCardEntry:Ljava/lang/Object;,"TT;"
    .local p2, input:Ljava/lang/Object;,"TT;"
    const/4 v1, 0x0

    .line 685
    const-string v0, "WHITELIST"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 697
    :goto_0
    return v0

    .line 689
    :cond_0
    const-string v0, "BLACKLIST"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BLACKLIST"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 693
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 697
    goto :goto_0
.end method

.method private static isNonWildcardSet(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;TT;)Z"
        }
    .end annotation

    .prologue
    .line 513
    .local p0, a:Ljava/util/Set;,"Ljava/util/Set<TT;>;"
    .local p1, wildcardEntry:Ljava/lang/Object;,"TT;"
    if-eqz p1, :cond_0

    .line 515
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    const/4 v0, 0x1

    .line 521
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeEffectiveLists(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<TT;>;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<TT;>;>;TT;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 569
    .local p0, admin1:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    .local p1, admin2:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    .local p2, wildcardEntry:Ljava/lang/Object;,"TT;"
    const-string v4, "WHITELIST"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 675
    .end local p1           #admin2:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    :goto_0
    return-object p1

    .line 573
    .restart local p1       #admin2:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    :cond_0
    const-string v4, "WHITELIST"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object p1, p0

    .line 575
    goto :goto_0

    .line 581
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 583
    .local v0, effectiveListMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    const-string v4, "BLACKLIST"

    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    const-string v4, "WHITELIST"

    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    const-string v4, "BLACKLIST"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "WHITELIST"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 593
    const-string v4, "BLACKLIST"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "WHITELIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 597
    const-string v4, "BLACKLIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "BLACKLIST"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 599
    const-string v4, "WHITELIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "WHITELIST"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 605
    const-string v4, "BLACKLIST"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "BLACKLIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-static {v4, v5, p2}, Lcom/android/server/enterprise/Utils;->getNumWildcardSets(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Object;)I

    move-result v3

    .line 609
    .local v3, wildcardSetCount:I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 615
    const-string v4, "WHITELIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "WHITELIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 617
    const-string v4, "WHITELIST"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 665
    :goto_1
    const-string v4, "BLACKLIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "BLACKLIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 671
    const-string v4, "WHITELIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "WHITELIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object p1, v0

    .line 675
    goto/16 :goto_0

    .line 619
    :cond_2
    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 629
    const-string v4, "BLACKLIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-static {v4, p2}, Lcom/android/server/enterprise/Utils;->isNonWildcardSet(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 631
    move-object v1, v0

    .line 633
    .local v1, nonWildCardListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    move-object v2, p1

    .line 643
    .local v2, wildCardListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    :goto_2
    const-string v4, "WHITELIST"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 645
    const-string v4, "WHITELIST"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "BLACKLIST"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 637
    .end local v1           #nonWildCardListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    .end local v2           #wildCardListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    :cond_3
    move-object v1, p1

    .line 639
    .restart local v1       #nonWildCardListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    move-object v2, v0

    .restart local v2       #wildCardListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    goto :goto_2

    .line 651
    .end local v1           #nonWildCardListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    .end local v2           #wildCardListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    :cond_4
    const-string v4, "WHITELIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "BLACKLIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 657
    const-string v4, "WHITELIST"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "BLACKLIST"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto/16 :goto_1
.end method

.method public static readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "aPropName"
    .parameter "aFileName"

    .prologue
    const/4 v7, 0x0

    .line 233
    const-string v0, "readPropertyValue"

    .line 239
    .local v0, TAG:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .local v3, lFReader:Ljava/io/FileReader;
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v8, 0x200

    invoke-direct {v2, v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 257
    .local v2, lBufReader:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 259
    .local v4, lLine:Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 261
    const-string v8, "="

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 265
    const-string v8, "="

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 267
    .local v5, lParsedString:[Ljava/lang/String;
    array-length v8, v5

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    const/4 v8, 0x1

    aget-object v6, v5, v8

    .line 269
    .local v6, result:Ljava/lang/String;
    :goto_0
    const-string v8, "null"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    if-eqz v7, :cond_1

    .line 271
    const/4 v6, 0x0

    .line 289
    :cond_1
    if-eqz v3, :cond_2

    .line 291
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 293
    const/4 v3, 0x0

    .line 297
    :cond_2
    if-eqz v2, :cond_3

    .line 299
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 301
    const/4 v2, 0x0

    .line 313
    .end local v2           #lBufReader:Ljava/io/BufferedReader;
    .end local v3           #lFReader:Ljava/io/FileReader;
    .end local v4           #lLine:Ljava/lang/String;
    .end local v5           #lParsedString:[Ljava/lang/String;
    .end local v6           #result:Ljava/lang/String;
    :cond_3
    :goto_1
    return-object v6

    .line 241
    :catch_0
    move-exception v1

    .line 243
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 245
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File access error "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    .line 247
    goto :goto_1

    .line 267
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #lBufReader:Ljava/io/BufferedReader;
    .restart local v3       #lFReader:Ljava/io/FileReader;
    .restart local v4       #lLine:Ljava/lang/String;
    .restart local v5       #lParsedString:[Ljava/lang/String;
    :cond_4
    :try_start_3
    const-string v6, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 279
    .end local v5           #lParsedString:[Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 281
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 289
    if-eqz v3, :cond_5

    .line 291
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 293
    const/4 v3, 0x0

    .line 297
    :cond_5
    if-eqz v2, :cond_6

    .line 299
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 301
    const/4 v2, 0x0

    .end local v1           #e:Ljava/lang/Exception;
    :cond_6
    :goto_2
    move-object v6, v7

    .line 283
    goto :goto_1

    .line 287
    :catchall_0
    move-exception v7

    .line 289
    if-eqz v3, :cond_7

    .line 291
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 293
    const/4 v3, 0x0

    .line 297
    :cond_7
    if-eqz v2, :cond_8

    .line 299
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 301
    const/4 v2, 0x0

    .line 287
    :cond_8
    :goto_3
    throw v7

    .line 289
    :cond_9
    if-eqz v3, :cond_a

    .line 291
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 293
    const/4 v3, 0x0

    .line 297
    :cond_a
    if-eqz v2, :cond_b

    .line 299
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 301
    const/4 v2, 0x0

    :cond_b
    :goto_4
    move-object v6, v7

    .line 313
    goto :goto_1

    .line 305
    :catch_2
    move-exception v1

    .line 307
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 305
    .local v1, e:Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 307
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 305
    .end local v1           #e:Ljava/io/IOException;
    .restart local v5       #lParsedString:[Ljava/lang/String;
    .restart local v6       #result:Ljava/lang/String;
    :catch_4
    move-exception v1

    .line 307
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 305
    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #lParsedString:[Ljava/lang/String;
    .end local v6           #result:Ljava/lang/String;
    :catch_5
    move-exception v1

    .line 307
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method public static writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 18
    .parameter "aPropName"
    .parameter "aPropValue"
    .parameter "aFileName"

    .prologue
    .line 349
    const-string v1, "writePropertyValue"

    .line 351
    .local v1, TAG:Ljava/lang/String;
    const/4 v11, 0x0

    .line 353
    .local v11, lSuccess:Z
    const/4 v12, 0x0

    .line 355
    .local v12, ps:Ljava/io/PrintStream;
    const/4 v5, 0x0

    .line 357
    .local v5, lFReader:Ljava/io/FileReader;
    const/4 v3, 0x0

    .line 361
    .local v3, lBufReader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 363
    .local v7, lFile:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    .line 365
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 367
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x1a4

    const/16 v16, -0x1

    const/16 v17, -0x1

    invoke-static/range {v14 .. v17}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 385
    :cond_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 387
    .end local v5           #lFReader:Ljava/io/FileReader;
    .local v6, lFReader:Ljava/io/FileReader;
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v14, 0x200

    invoke-direct {v4, v6, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 391
    .end local v3           #lBufReader:Ljava/io/BufferedReader;
    .local v4, lBufReader:Ljava/io/BufferedReader;
    :try_start_2
    new-instance v10, Ljava/lang/StringBuffer;

    const-string v14, ""

    invoke-direct {v10, v14}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 393
    .local v10, lStrBuffer:Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    .line 395
    .local v8, lFound:Z
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, lLine:Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 397
    const-string v14, "="

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 401
    const/4 v8, 0x1

    .line 403
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 407
    :cond_1
    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 409
    const-string v14, "line.separator"

    invoke-static {v14}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 439
    .end local v8           #lFound:Z
    .end local v9           #lLine:Ljava/lang/String;
    .end local v10           #lStrBuffer:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v2

    move-object v3, v4

    .end local v4           #lBufReader:Ljava/io/BufferedReader;
    .restart local v3       #lBufReader:Ljava/io/BufferedReader;
    move-object v5, v6

    .line 441
    .end local v6           #lFReader:Ljava/io/FileReader;
    .end local v7           #lFile:Ljava/io/File;
    .local v2, e:Ljava/lang/Exception;
    .restart local v5       #lFReader:Ljava/io/FileReader;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 447
    if-eqz v5, :cond_2

    .line 449
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 451
    const/4 v5, 0x0

    .line 457
    :cond_2
    if-eqz v3, :cond_3

    .line 459
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 461
    const/4 v3, 0x0

    .line 471
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    :goto_2
    if-eqz v12, :cond_4

    .line 473
    invoke-virtual {v12}, Ljava/io/PrintStream;->close()V

    .line 475
    .end local v12           #ps:Ljava/io/PrintStream;
    :goto_3
    const/4 v12, 0x0

    .line 481
    .restart local v12       #ps:Ljava/io/PrintStream;
    :cond_4
    :goto_4
    return v11

    .line 417
    .end local v3           #lBufReader:Ljava/io/BufferedReader;
    .end local v5           #lFReader:Ljava/io/FileReader;
    .restart local v4       #lBufReader:Ljava/io/BufferedReader;
    .restart local v6       #lFReader:Ljava/io/FileReader;
    .restart local v7       #lFile:Ljava/io/File;
    .restart local v8       #lFound:Z
    .restart local v9       #lLine:Ljava/lang/String;
    .restart local v10       #lStrBuffer:Ljava/lang/StringBuffer;
    :cond_5
    if-nez v8, :cond_6

    .line 419
    :try_start_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    const-string v14, "line.separator"

    invoke-static {v14}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 429
    :cond_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 431
    const/4 v3, 0x0

    .line 433
    .end local v4           #lBufReader:Ljava/io/BufferedReader;
    .restart local v3       #lBufReader:Ljava/io/BufferedReader;
    :try_start_6
    new-instance v13, Ljava/io/PrintStream;

    invoke-direct {v13, v7}, Ljava/io/PrintStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 435
    .end local v12           #ps:Ljava/io/PrintStream;
    .local v13, ps:Ljava/io/PrintStream;
    :try_start_7
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 437
    const/4 v11, 0x1

    .line 447
    if-eqz v6, :cond_c

    .line 449
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 451
    const/4 v5, 0x0

    .line 457
    .end local v6           #lFReader:Ljava/io/FileReader;
    .restart local v5       #lFReader:Ljava/io/FileReader;
    :goto_5
    if-eqz v3, :cond_7

    .line 459
    :try_start_9
    throw v3
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 461
    const/4 v3, 0x0

    .line 471
    :cond_7
    :goto_6
    if-eqz v13, :cond_b

    .line 473
    invoke-virtual {v13}, Ljava/io/PrintStream;->close()V

    goto :goto_3

    .line 445
    .end local v7           #lFile:Ljava/io/File;
    .end local v8           #lFound:Z
    .end local v9           #lLine:Ljava/lang/String;
    .end local v10           #lStrBuffer:Ljava/lang/StringBuffer;
    .end local v13           #ps:Ljava/io/PrintStream;
    .restart local v12       #ps:Ljava/io/PrintStream;
    :catchall_0
    move-exception v14

    .line 447
    :goto_7
    if-eqz v5, :cond_8

    .line 449
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 451
    const/4 v5, 0x0

    .line 457
    :cond_8
    if-eqz v3, :cond_9

    .line 459
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 461
    const/4 v3, 0x0

    .line 471
    :cond_9
    :goto_8
    if-eqz v12, :cond_a

    .line 473
    invoke-virtual {v12}, Ljava/io/PrintStream;->close()V

    .line 475
    const/4 v12, 0x0

    .line 445
    :cond_a
    throw v14

    .line 465
    :catch_1
    move-exception v2

    .line 467
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 465
    .local v2, e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 467
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 465
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #lFReader:Ljava/io/FileReader;
    .end local v12           #ps:Ljava/io/PrintStream;
    .restart local v6       #lFReader:Ljava/io/FileReader;
    .restart local v7       #lFile:Ljava/io/File;
    .restart local v8       #lFound:Z
    .restart local v9       #lLine:Ljava/lang/String;
    .restart local v10       #lStrBuffer:Ljava/lang/StringBuffer;
    .restart local v13       #ps:Ljava/io/PrintStream;
    :catch_3
    move-exception v2

    move-object v5, v6

    .line 467
    .end local v6           #lFReader:Ljava/io/FileReader;
    .restart local v2       #e:Ljava/io/IOException;
    .restart local v5       #lFReader:Ljava/io/FileReader;
    :goto_9
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 465
    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v2

    goto :goto_9

    .line 445
    .end local v5           #lFReader:Ljava/io/FileReader;
    .end local v8           #lFound:Z
    .end local v9           #lLine:Ljava/lang/String;
    .end local v10           #lStrBuffer:Ljava/lang/StringBuffer;
    .end local v13           #ps:Ljava/io/PrintStream;
    .restart local v6       #lFReader:Ljava/io/FileReader;
    .restart local v12       #ps:Ljava/io/PrintStream;
    :catchall_1
    move-exception v14

    move-object v5, v6

    .end local v6           #lFReader:Ljava/io/FileReader;
    .restart local v5       #lFReader:Ljava/io/FileReader;
    goto :goto_7

    .end local v3           #lBufReader:Ljava/io/BufferedReader;
    .end local v5           #lFReader:Ljava/io/FileReader;
    .restart local v4       #lBufReader:Ljava/io/BufferedReader;
    .restart local v6       #lFReader:Ljava/io/FileReader;
    :catchall_2
    move-exception v14

    move-object v3, v4

    .end local v4           #lBufReader:Ljava/io/BufferedReader;
    .restart local v3       #lBufReader:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #lFReader:Ljava/io/FileReader;
    .restart local v5       #lFReader:Ljava/io/FileReader;
    goto :goto_7

    .end local v5           #lFReader:Ljava/io/FileReader;
    .end local v12           #ps:Ljava/io/PrintStream;
    .restart local v6       #lFReader:Ljava/io/FileReader;
    .restart local v8       #lFound:Z
    .restart local v9       #lLine:Ljava/lang/String;
    .restart local v10       #lStrBuffer:Ljava/lang/StringBuffer;
    .restart local v13       #ps:Ljava/io/PrintStream;
    :catchall_3
    move-exception v14

    move-object v5, v6

    .end local v6           #lFReader:Ljava/io/FileReader;
    .restart local v5       #lFReader:Ljava/io/FileReader;
    move-object v12, v13

    .end local v13           #ps:Ljava/io/PrintStream;
    .restart local v12       #ps:Ljava/io/PrintStream;
    goto :goto_7

    .line 439
    .end local v7           #lFile:Ljava/io/File;
    .end local v8           #lFound:Z
    .end local v9           #lLine:Ljava/lang/String;
    .end local v10           #lStrBuffer:Ljava/lang/StringBuffer;
    :catch_5
    move-exception v2

    goto/16 :goto_1

    .end local v5           #lFReader:Ljava/io/FileReader;
    .restart local v6       #lFReader:Ljava/io/FileReader;
    .restart local v7       #lFile:Ljava/io/File;
    :catch_6
    move-exception v2

    move-object v5, v6

    .end local v6           #lFReader:Ljava/io/FileReader;
    .restart local v5       #lFReader:Ljava/io/FileReader;
    goto/16 :goto_1

    .end local v5           #lFReader:Ljava/io/FileReader;
    .end local v12           #ps:Ljava/io/PrintStream;
    .restart local v6       #lFReader:Ljava/io/FileReader;
    .restart local v8       #lFound:Z
    .restart local v9       #lLine:Ljava/lang/String;
    .restart local v10       #lStrBuffer:Ljava/lang/StringBuffer;
    .restart local v13       #ps:Ljava/io/PrintStream;
    :catch_7
    move-exception v2

    move-object v5, v6

    .end local v6           #lFReader:Ljava/io/FileReader;
    .restart local v5       #lFReader:Ljava/io/FileReader;
    move-object v12, v13

    .end local v13           #ps:Ljava/io/PrintStream;
    .restart local v12       #ps:Ljava/io/PrintStream;
    goto/16 :goto_1

    .end local v12           #ps:Ljava/io/PrintStream;
    .restart local v13       #ps:Ljava/io/PrintStream;
    :cond_b
    move-object v12, v13

    .end local v13           #ps:Ljava/io/PrintStream;
    .restart local v12       #ps:Ljava/io/PrintStream;
    goto/16 :goto_4

    .end local v5           #lFReader:Ljava/io/FileReader;
    .end local v12           #ps:Ljava/io/PrintStream;
    .restart local v6       #lFReader:Ljava/io/FileReader;
    .restart local v13       #ps:Ljava/io/PrintStream;
    :cond_c
    move-object v5, v6

    .end local v6           #lFReader:Ljava/io/FileReader;
    .restart local v5       #lFReader:Ljava/io/FileReader;
    goto :goto_5
.end method

.method public static writeToLog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "logLevel"
    .parameter "tag"
    .parameter "logMessage"

    .prologue
    .line 153
    sget-boolean v0, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    if-eqz v0, :cond_0

    .line 155
    packed-switch p0, :pswitch_data_0

    .line 189
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 159
    :pswitch_0
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    :pswitch_1
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    :pswitch_2
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 177
    :pswitch_3
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 183
    :pswitch_4
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public static writeToLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "logLevel"
    .parameter "tag"
    .parameter "logMessage"
    .parameter "tr"

    .prologue
    .line 201
    sget-boolean v0, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    if-eqz v0, :cond_0

    .line 203
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    :cond_0
    return-void
.end method

.method public static writeToLog(Ljava/lang/String;)V
    .locals 1
    .parameter "logMessage"

    .prologue
    .line 127
    sget-boolean v0, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    if-eqz v0, :cond_0

    .line 129
    const-string v0, "EDM : "

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    return-void
.end method

.method public static writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "logMessage"

    .prologue
    .line 139
    sget-boolean v0, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    if-eqz v0, :cond_0

    .line 141
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    return-void
.end method
