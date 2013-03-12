.class public final Lcom/android/internal/telephony/MccTable;
.super Ljava/lang/Object;
.source "MccTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/MccTable$MccEntry;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "MccTable"

.field static table:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/MccTable$MccEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xf0

    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    .line 358
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xca

    const-string v3, "gr"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xcc

    const-string/jumbo v3, "nl"

    const-string/jumbo v4, "nl"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xce

    const-string v3, "be"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xd0

    const-string v3, "fr"

    const-string v4, "fr"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xd4

    const-string v3, "mc"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xd5

    const-string v3, "ad"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xd6

    const-string v3, "es"

    const-string v4, "es"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xd8

    const-string v3, "hu"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xda

    const-string v3, "ba"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xdb

    const-string v3, "hr"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xdc

    const-string/jumbo v3, "rs"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xde

    const-string v3, "it"

    const-string v4, "it"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xe1

    const-string/jumbo v3, "va"

    const-string v4, "it"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xe2

    const-string/jumbo v3, "ro"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xe4

    const-string v3, "ch"

    const-string v4, "de"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xe6

    const-string v3, "cz"

    const-string v4, "cs"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xe7

    const-string/jumbo v3, "sk"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xe8

    const-string v3, "at"

    const-string v4, "de"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xea

    const-string v3, "gb"

    const-string v4, "en"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xeb

    const-string v3, "gb"

    const-string v4, "en"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xee

    const-string v3, "dk"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string/jumbo v2, "se"

    invoke-direct {v1, v7, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xf2

    const-string/jumbo v3, "no"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xf4

    const-string v3, "fi"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xf6

    const-string v3, "lt"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xf7

    const-string v3, "lv"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xf8

    const-string v3, "ee"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xfa

    const-string/jumbo v3, "ru"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xff

    const-string/jumbo v3, "ua"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x101

    const-string v3, "by"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x103

    const-string v3, "md"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x104

    const-string/jumbo v3, "pl"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x106

    const-string v3, "de"

    const-string v4, "de"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x10a

    const-string v3, "gi"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x10c

    const-string/jumbo v3, "pt"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x10e

    const-string v3, "lu"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x110

    const-string v3, "ie"

    const-string v4, "en"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x112

    const-string v3, "is"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x114

    const-string v3, "al"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x116

    const-string/jumbo v3, "mt"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x118

    const-string v3, "cy"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x11a

    const-string v3, "ge"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x11b

    const-string v3, "am"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x11c

    const-string v3, "bg"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x11e

    const-string/jumbo v3, "tr"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x120

    const-string v3, "fo"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x121

    const-string v3, "ge"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x122

    const-string v3, "gl"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x124

    const-string/jumbo v3, "sm"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x125

    const-string/jumbo v3, "si"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x126

    const-string/jumbo v3, "mk"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x127

    const-string v3, "li"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x129

    const-string v3, "me"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x12e

    const-string v3, "ca"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x134

    const-string/jumbo v3, "pm"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x136

    const-string/jumbo v3, "us"

    const-string v4, "en"

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x137

    const-string/jumbo v3, "us"

    const-string v4, "en"

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x138

    const-string/jumbo v3, "us"

    const-string v4, "en"

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x139

    const-string/jumbo v3, "us"

    const-string v4, "en"

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x13a

    const-string/jumbo v3, "us"

    const-string v4, "en"

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x13b

    const-string/jumbo v3, "us"

    const-string v4, "en"

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x13c

    const-string/jumbo v3, "us"

    const-string v4, "en"

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x14a

    const-string/jumbo v3, "pr"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x14c

    const-string/jumbo v3, "vi"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x14e

    const-string/jumbo v3, "mx"

    invoke-direct {v1, v2, v3, v6}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x152

    const-string v3, "jm"

    invoke-direct {v1, v2, v3, v6}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x154

    const-string v3, "gp"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x156

    const-string v3, "bb"

    invoke-direct {v1, v2, v3, v6}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x158

    const-string v3, "ag"

    invoke-direct {v1, v2, v3, v6}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x15a

    const-string v3, "ky"

    invoke-direct {v1, v2, v3, v6}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x15c

    const-string/jumbo v3, "vg"

    invoke-direct {v1, v2, v3, v6}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x15e

    const-string v3, "bm"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x160

    const-string v3, "gd"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x162

    const-string/jumbo v3, "ms"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x164

    const-string v3, "kn"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x166

    const-string v3, "lc"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x168

    const-string/jumbo v3, "vc"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x16a

    const-string v3, "ai"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x16b

    const-string v3, "aw"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x16c

    const-string v3, "bs"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x16d

    const-string v3, "ai"

    invoke-direct {v1, v2, v3, v6}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x16e

    const-string v3, "dm"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x170

    const-string v3, "cu"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x172

    const-string v3, "do"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x174

    const-string v3, "ht"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x176

    const-string/jumbo v3, "tt"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x178

    const-string/jumbo v3, "tc"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x190

    const-string v3, "az"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x191

    const-string v3, "kz"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x192

    const-string v3, "bt"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x194

    const-string v3, "in"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x195

    const-string v3, "in"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x19a

    const-string/jumbo v3, "pk"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x19c

    const-string v3, "af"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x19d

    const-string v3, "lk"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x19e

    const-string/jumbo v3, "mm"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x19f

    const-string v3, "lb"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1a0

    const-string v3, "jo"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1a1

    const-string/jumbo v3, "sy"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1a2

    const-string v3, "iq"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1a3

    const-string v3, "kw"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1a4

    const-string/jumbo v3, "sa"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1a5

    const-string/jumbo v3, "ye"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1a6

    const-string/jumbo v3, "om"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1a7

    const-string/jumbo v3, "ps"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1a8

    const-string v3, "ae"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1a9

    const-string v3, "il"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1aa

    const-string v3, "bh"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1ab

    const-string/jumbo v3, "qa"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1ac

    const-string/jumbo v3, "mn"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1ad

    const-string/jumbo v3, "np"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1ae

    const-string v3, "ae"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1af

    const-string v3, "ae"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1b0

    const-string v3, "ir"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1b2

    const-string/jumbo v3, "uz"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1b4

    const-string/jumbo v3, "tj"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1b5

    const-string v3, "kg"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1b6

    const-string/jumbo v3, "tm"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1b8

    const-string v3, "jp"

    const-string v4, "ja"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1b9

    const-string v3, "jp"

    const-string v4, "ja"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1c2

    const-string v3, "kr"

    const-string v4, "ko"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1c4

    const-string/jumbo v3, "vn"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1c6

    const-string v3, "hk"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1c7

    const-string/jumbo v3, "mo"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1c8

    const-string v3, "kh"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1c9

    const-string v3, "la"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1cc

    const-string v3, "cn"

    const-string/jumbo v4, "zh"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1cd

    const-string v3, "cn"

    const-string/jumbo v4, "zh"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1d2

    const-string/jumbo v3, "tw"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1d3

    const-string v3, "kp"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1d6

    const-string v3, "bd"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1d8

    const-string/jumbo v3, "mv"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1f6

    const-string/jumbo v3, "my"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1f9

    const-string v3, "au"

    const-string v4, "en"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1fe

    const-string v3, "id"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x202

    const-string/jumbo v3, "tl"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x203

    const-string/jumbo v3, "ph"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x208

    const-string/jumbo v3, "th"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x20d

    const-string/jumbo v3, "sg"

    const-string v4, "en"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x210

    const-string v3, "bn"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x212

    const-string/jumbo v3, "nz"

    const-string v4, "en"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x216

    const-string/jumbo v3, "mp"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x217

    const-string v3, "gu"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x218

    const-string/jumbo v3, "nr"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x219

    const-string/jumbo v3, "pg"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x21b

    const-string/jumbo v3, "to"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x21c

    const-string/jumbo v3, "sb"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x21d

    const-string/jumbo v3, "vu"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x21e

    const-string v3, "fj"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x21f

    const-string/jumbo v3, "wf"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x220

    const-string v3, "as"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x221

    const-string v3, "ki"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x222

    const-string/jumbo v3, "nc"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x223

    const-string/jumbo v3, "pf"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x224

    const-string v3, "ck"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x225

    const-string/jumbo v3, "ws"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x226

    const-string v3, "fm"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x227

    const-string/jumbo v3, "mh"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x228

    const-string/jumbo v3, "pw"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x25a

    const-string v3, "eg"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x25b

    const-string v3, "dz"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x25c

    const-string v3, "ma"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x25d

    const-string/jumbo v3, "tn"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x25e

    const-string v3, "ly"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x25f

    const-string v3, "gm"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x260

    const-string/jumbo v3, "sn"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x261

    const-string/jumbo v3, "mr"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x262

    const-string/jumbo v3, "ml"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x263

    const-string v3, "gn"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x264

    const-string v3, "ci"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x265

    const-string v3, "bf"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x266

    const-string/jumbo v3, "ne"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x267

    const-string/jumbo v3, "tg"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x268

    const-string v3, "bj"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x269

    const-string/jumbo v3, "mu"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x26a

    const-string v3, "lr"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x26b

    const-string/jumbo v3, "sl"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x26c

    const-string v3, "gh"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x26d

    const-string/jumbo v3, "ng"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x26e

    const-string/jumbo v3, "td"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x26f

    const-string v3, "cf"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x270

    const-string v3, "cm"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x271

    const-string v3, "cv"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x272

    const-string/jumbo v3, "st"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x273

    const-string v3, "gq"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x274

    const-string v3, "ga"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x275

    const-string v3, "cg"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x276

    const-string v3, "cg"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x277

    const-string v3, "ao"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x278

    const-string v3, "gw"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x279

    const-string/jumbo v3, "sc"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x27a

    const-string/jumbo v3, "sd"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x27b

    const-string/jumbo v3, "rw"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x27c

    const-string v3, "et"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x27d

    const-string/jumbo v3, "so"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x27e

    const-string v3, "dj"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x27f

    const-string v3, "ke"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x280

    const-string/jumbo v3, "tz"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x281

    const-string/jumbo v3, "ug"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x282

    const-string v3, "bi"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x283

    const-string/jumbo v3, "mz"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x285

    const-string/jumbo v3, "zm"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x286

    const-string/jumbo v3, "mg"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x287

    const-string/jumbo v3, "re"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x288

    const-string/jumbo v3, "zw"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x289

    const-string/jumbo v3, "na"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x28a

    const-string/jumbo v3, "mw"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x28b

    const-string v3, "ls"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x28c

    const-string v3, "bw"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x28d

    const-string/jumbo v3, "sz"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x28e

    const-string v3, "km"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x28f

    const-string/jumbo v3, "za"

    const-string v4, "en"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x291

    const-string v3, "er"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2be

    const-string v3, "bz"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2c0

    const-string v3, "gt"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2c2

    const-string/jumbo v3, "sv"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2c4

    const-string v3, "hn"

    invoke-direct {v1, v2, v3, v6}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2c6

    const-string/jumbo v3, "ni"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2c8

    const-string v3, "cr"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2ca

    const-string/jumbo v3, "pa"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2cc

    const-string/jumbo v3, "pe"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2d2

    const-string v3, "ar"

    invoke-direct {v1, v2, v3, v6}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2d4

    const-string v3, "br"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2da

    const-string v3, "cl"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2dc

    const-string v3, "co"

    invoke-direct {v1, v2, v3, v6}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2de

    const-string/jumbo v3, "ve"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2e0

    const-string v3, "bo"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2e2

    const-string v3, "gy"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2e4

    const-string v3, "ec"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2e6

    const-string v3, "gf"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2e8

    const-string/jumbo v3, "py"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2ea

    const-string/jumbo v3, "sr"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2ec

    const-string/jumbo v3, "uy"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2ee

    const-string v3, "fk"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/4 v2, -0x1

    const-string v3, ""

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    sget-object v0, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 601
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static countryCodeForMcc(I)Ljava/lang/String;
    .locals 2
    .parameter "mcc"

    .prologue
    .line 125
    invoke-static {p0}, Lcom/android/internal/telephony/MccTable;->entryForMcc(I)Lcom/android/internal/telephony/MccTable$MccEntry;

    move-result-object v0

    .line 127
    .local v0, entry:Lcom/android/internal/telephony/MccTable$MccEntry;
    if-nez v0, :cond_0

    .line 128
    const-string v1, ""

    .line 130
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/MccTable$MccEntry;->iso:Ljava/lang/String;

    goto :goto_0
.end method

.method public static defaultLanguageForMcc(I)Ljava/lang/String;
    .locals 2
    .parameter "mcc"

    .prologue
    .line 142
    invoke-static {p0}, Lcom/android/internal/telephony/MccTable;->entryForMcc(I)Lcom/android/internal/telephony/MccTable$MccEntry;

    move-result-object v0

    .line 144
    .local v0, entry:Lcom/android/internal/telephony/MccTable$MccEntry;
    if-nez v0, :cond_0

    .line 145
    const/4 v1, 0x0

    .line 147
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/MccTable$MccEntry;->language:Ljava/lang/String;

    goto :goto_0
.end method

.method public static defaultTimeZoneForMcc(I)Ljava/lang/String;
    .locals 6
    .parameter "mcc"

    .prologue
    const/4 v3, 0x0

    .line 99
    invoke-static {p0}, Lcom/android/internal/telephony/MccTable;->entryForMcc(I)Lcom/android/internal/telephony/MccTable$MccEntry;

    move-result-object v0

    .line 100
    .local v0, entry:Lcom/android/internal/telephony/MccTable$MccEntry;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/android/internal/telephony/MccTable$MccEntry;->iso:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-object v3

    .line 104
    :cond_1
    iget-object v4, v0, Lcom/android/internal/telephony/MccTable$MccEntry;->language:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 105
    new-instance v1, Ljava/util/Locale;

    iget-object v4, v0, Lcom/android/internal/telephony/MccTable$MccEntry;->iso:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 109
    .local v1, locale:Ljava/util/Locale;
    :goto_1
    invoke-static {v1}, Llibcore/icu/TimeZones;->forLocale(Ljava/util/Locale;)[Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, tz:[Ljava/lang/String;
    array-length v4, v2

    if-eqz v4, :cond_0

    .line 111
    const/4 v3, 0x0

    aget-object v3, v2, v3

    goto :goto_0

    .line 107
    .end local v1           #locale:Ljava/util/Locale;
    .end local v2           #tz:[Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/util/Locale;

    iget-object v4, v0, Lcom/android/internal/telephony/MccTable$MccEntry;->language:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/internal/telephony/MccTable$MccEntry;->iso:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v1       #locale:Ljava/util/Locale;
    goto :goto_1
.end method

.method private static entryForMcc(I)Lcom/android/internal/telephony/MccTable$MccEntry;
    .locals 4
    .parameter "mcc"

    .prologue
    const/4 v2, 0x0

    .line 80
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    .line 82
    .local v1, m:Lcom/android/internal/telephony/MccTable$MccEntry;
    sget-object v3, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    invoke-static {v3, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 84
    .local v0, index:I
    if-gez v0, :cond_0

    .line 87
    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/android/internal/telephony/MccTable;->table:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    goto :goto_0
.end method

.method private static setLocaleFromMccIfNeeded(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "mcc"

    .prologue
    .line 308
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 313
    const-string v2, "SPR"

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 321
    :goto_0
    return-void

    .line 316
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->defaultLanguageForMcc(I)Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, language:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, country:Ljava/lang/String;
    const-string v2, "MccTable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "locale set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-static {p0, v1, v0}, Lcom/android/internal/telephony/MccTable;->setSystemLocale(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setSystemLocale(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "context"
    .parameter "language"
    .parameter "country"

    .prologue
    const/4 v11, 0x5

    .line 239
    const-string/jumbo v8, "persist.sys.language"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 240
    .local v6, l:Ljava/lang/String;
    const-string/jumbo v8, "persist.sys.country"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, c:Ljava/lang/String;
    if-nez p1, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 246
    if-nez p2, :cond_2

    .line 247
    const-string p2, ""

    .line 249
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    .line 251
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    .line 254
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v7

    .line 255
    .local v7, locales:[Ljava/lang/String;
    array-length v0, v7

    .line 256
    .local v0, N:I
    const/4 v2, 0x0

    .line 257
    .local v2, bestMatch:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v0, :cond_5

    .line 259
    aget-object v8, v7, v5

    if-eqz v8, :cond_7

    aget-object v8, v7, v5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v11, :cond_7

    aget-object v8, v7, v5

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 261
    aget-object v8, v7, v5

    const/4 v9, 0x3

    const/4 v10, 0x5

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 262
    aget-object v2, v7, v5

    .line 269
    :cond_5
    if-eqz v2, :cond_0

    .line 270
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 271
    .local v1, am:Landroid/app/IActivityManager;
    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 272
    .local v4, config:Landroid/content/res/Configuration;
    new-instance v8, Ljava/util/Locale;

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    const/4 v11, 0x5

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 274
    const/4 v8, 0x1

    iput-boolean v8, v4, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 275
    invoke-interface {v1, v4}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 277
    .end local v0           #N:I
    .end local v1           #am:Landroid/app/IActivityManager;
    .end local v2           #bestMatch:Ljava/lang/String;
    .end local v4           #config:Landroid/content/res/Configuration;
    .end local v5           #i:I
    .end local v7           #locales:[Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_0

    .line 264
    .restart local v0       #N:I
    .restart local v2       #bestMatch:Ljava/lang/String;
    .restart local v5       #i:I
    .restart local v7       #locales:[Ljava/lang/String;
    :cond_6
    if-nez v2, :cond_7

    .line 265
    aget-object v2, v7, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private static setTimezoneFromMccIfNeeded(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "mcc"

    .prologue
    .line 289
    const-string/jumbo v3, "persist.sys.timezone"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, timezone:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 291
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->defaultTimeZoneForMcc(I)Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, zoneId:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 294
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 296
    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 297
    const-string v3, "MccTable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "timezone set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .end local v0           #alarm:Landroid/app/AlarmManager;
    .end local v2           #zoneId:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static setWifiCountryCodeFromMcc(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "mcc"

    .prologue
    .line 330
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, country:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 332
    const-string v2, "MccTable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WIFI_COUNTRY_CODE set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const-string/jumbo v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 335
    .local v1, wM:Landroid/net/wifi/WifiManager;
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->setCountryCode(Ljava/lang/String;Z)V

    .line 337
    .end local v1           #wM:Landroid/net/wifi/WifiManager;
    :cond_0
    return-void
.end method

.method public static smallestDigitsMccForMnc(I)I
    .locals 2
    .parameter "mcc"

    .prologue
    .line 161
    invoke-static {p0}, Lcom/android/internal/telephony/MccTable;->entryForMcc(I)Lcom/android/internal/telephony/MccTable$MccEntry;

    move-result-object v0

    .line 163
    .local v0, entry:Lcom/android/internal/telephony/MccTable$MccEntry;
    if-nez v0, :cond_0

    .line 164
    const/4 v1, 0x2

    .line 166
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/android/internal/telephony/MccTable$MccEntry;->smallestDigitsMnc:I

    goto :goto_0
.end method

.method public static updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .parameter "context"
    .parameter "mccmnc"

    .prologue
    .line 177
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 181
    const/4 v7, 0x0

    const/4 v8, 0x3

    :try_start_0
    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 182
    .local v5, mcc:I
    const/4 v7, 0x3

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 188
    .local v6, mnc:I
    const-string v7, "MccTable"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateMccMncConfiguration: mcc="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mnc="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    if-eqz v5, :cond_0

    .line 191
    invoke-static {p0, v5}, Lcom/android/internal/telephony/MccTable;->setTimezoneFromMccIfNeeded(Landroid/content/Context;I)V

    .line 192
    invoke-static {p0, v5}, Lcom/android/internal/telephony/MccTable;->setLocaleFromMccIfNeeded(Landroid/content/Context;I)V

    .line 193
    invoke-static {p0, v5}, Lcom/android/internal/telephony/MccTable;->setWifiCountryCodeFromMcc(Landroid/content/Context;I)V

    .line 196
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 197
    .local v0, config:Landroid/content/res/Configuration;
    if-eqz v5, :cond_1

    .line 198
    iput v5, v0, Landroid/content/res/Configuration;->mcc:I

    .line 200
    :cond_1
    if-eqz v6, :cond_2

    .line 201
    iput v6, v0, Landroid/content/res/Configuration;->mnc:I

    .line 204
    :cond_2
    const-string v7, "SPR"

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 206
    const-string/jumbo v7, "ro.cdma.home.operator.numeric"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 208
    .local v3, homeMccMnc:Ljava/lang/String;
    if-eqz v3, :cond_3

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    if-lt v7, v8, :cond_3

    .line 209
    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 210
    .local v2, homeMcc:I
    const/4 v7, 0x3

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 211
    .local v4, homeMnc:I
    if-eqz v2, :cond_3

    if-eqz v4, :cond_3

    .line 212
    iput v2, v0, Landroid/content/res/Configuration;->mcc:I

    .line 213
    iput v4, v0, Landroid/content/res/Configuration;->mnc:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 219
    .end local v2           #homeMcc:I
    .end local v4           #homeMnc:I
    :cond_3
    :try_start_3
    const-string v7, "MccTable"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateMccMncConfiguration for SPR: mcc="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mnc="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .end local v3           #homeMccMnc:Ljava/lang/String;
    :cond_4
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-interface {v7, v0}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 228
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v5           #mcc:I
    .end local v6           #mnc:I
    :cond_5
    :goto_1
    return-void

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v7, "MccTable"

    const-string v8, "Error parsing IMSI"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 216
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v0       #config:Landroid/content/res/Configuration;
    .restart local v3       #homeMccMnc:Ljava/lang/String;
    .restart local v5       #mcc:I
    .restart local v6       #mnc:I
    :catch_1
    move-exception v1

    .line 217
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v7, "MccTable"

    const-string v8, "Error parsing ro.cdma.home.operator.numeric. Update config using IMSI"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 219
    :try_start_5
    const-string v7, "MccTable"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateMccMncConfiguration for SPR: mcc="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mnc="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 224
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v3           #homeMccMnc:Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 225
    .local v1, e:Landroid/os/RemoteException;
    const-string v7, "MccTable"

    const-string v8, "Can\'t update configuration"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 219
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #config:Landroid/content/res/Configuration;
    .restart local v3       #homeMccMnc:Ljava/lang/String;
    :catchall_0
    move-exception v7

    :try_start_6
    const-string v8, "MccTable"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateMccMncConfiguration for SPR: mcc="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mnc="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v7
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
.end method
