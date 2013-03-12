.class Lcom/android/internal/os/ZygoteConnection$Arguments;
.super Ljava/lang/Object;
.source "ZygoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/ZygoteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Arguments"
.end annotation


# instance fields
.field capabilitiesSpecified:Z

.field classpath:Ljava/lang/String;

.field debugFlags:I

.field effectiveCapabilities:J

.field gid:I

.field gidSpecified:Z

.field gids:[I

.field invokeWith:Ljava/lang/String;

.field niceName:Ljava/lang/String;

.field peerWait:Z

.field permittedCapabilities:J

.field remainingArgs:[Ljava/lang/String;

.field rlimits:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field

.field runtimeInit:Z

.field targetSdkVersion:I

.field targetSdkVersionSpecified:Z

.field uid:I

.field uidSpecified:Z


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 1
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 372
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    .line 322
    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    .line 373
    invoke-direct {p0, p1}, Lcom/android/internal/os/ZygoteConnection$Arguments;->parseArgs([Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method private parseArgs([Ljava/lang/String;)V
    .locals 14
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0x3d

    const/4 v11, 0x1

    .line 386
    const/4 v3, 0x0

    .line 388
    .local v3, curArg:I
    :goto_0
    array-length v9, p1

    if-ge v3, v9, :cond_0

    .line 389
    aget-object v0, p1, v3

    .line 391
    .local v0, arg:Ljava/lang/String;
    const-string v9, "--"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 392
    add-int/lit8 v3, v3, 0x1

    .line 516
    .end local v0           #arg:Ljava/lang/String;
    :cond_0
    iget-boolean v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->runtimeInit:Z

    if-eqz v9, :cond_1e

    iget-object v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->classpath:Ljava/lang/String;

    if-eqz v9, :cond_1e

    .line 517
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "--runtime-init and -classpath are incompatible"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 394
    .restart local v0       #arg:Ljava/lang/String;
    :cond_1
    const-string v9, "--setuid="

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 395
    iget-boolean v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    if-eqz v9, :cond_2

    .line 396
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Duplicate arg specified"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 399
    :cond_2
    iput-boolean v11, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    .line 400
    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    .line 388
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 402
    :cond_4
    const-string v9, "--setgid="

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 403
    iget-boolean v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    if-eqz v9, :cond_5

    .line 404
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Duplicate arg specified"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 407
    :cond_5
    iput-boolean v11, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    .line 408
    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    goto :goto_1

    .line 410
    :cond_6
    const-string v9, "--target-sdk-version="

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 411
    iget-boolean v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersionSpecified:Z

    if-eqz v9, :cond_7

    .line 412
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Duplicate target-sdk-version specified"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 415
    :cond_7
    iput-boolean v11, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersionSpecified:Z

    .line 416
    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    goto :goto_1

    .line 418
    :cond_8
    const-string v9, "--enable-debugger"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 419
    iget v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    or-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    goto :goto_1

    .line 420
    :cond_9
    const-string v9, "--enable-safemode"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 421
    iget v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    or-int/lit8 v9, v9, 0x8

    iput v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    goto :goto_1

    .line 422
    :cond_a
    const-string v9, "--enable-checkjni"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 423
    iget v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    or-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    goto :goto_1

    .line 424
    :cond_b
    const-string v9, "--enable-jni-logging"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 425
    iget v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    or-int/lit8 v9, v9, 0x10

    iput v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    goto/16 :goto_1

    .line 426
    :cond_c
    const-string v9, "--enable-assert"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 427
    iget v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    or-int/lit8 v9, v9, 0x4

    iput v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    goto/16 :goto_1

    .line 428
    :cond_d
    const-string v9, "--peer-wait"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 429
    iput-boolean v11, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->peerWait:Z

    goto/16 :goto_1

    .line 430
    :cond_e
    const-string v9, "--runtime-init"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 431
    iput-boolean v11, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->runtimeInit:Z

    goto/16 :goto_1

    .line 432
    :cond_f
    const-string v9, "--capabilities="

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 433
    iget-boolean v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->capabilitiesSpecified:Z

    if-eqz v9, :cond_10

    .line 434
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Duplicate arg specified"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 437
    :cond_10
    iput-boolean v11, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->capabilitiesSpecified:Z

    .line 438
    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 440
    .local v1, capString:Ljava/lang/String;
    const-string v9, ","

    const/4 v10, 0x2

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 442
    .local v2, capStrings:[Ljava/lang/String;
    array-length v9, v2

    if-ne v9, v11, :cond_11

    .line 443
    aget-object v9, v2, v13

    invoke-static {v9}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    .line 444
    iget-wide v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    iput-wide v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    goto/16 :goto_1

    .line 446
    :cond_11
    aget-object v9, v2, v13

    invoke-static {v9}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    .line 447
    aget-object v9, v2, v11

    invoke-static {v9}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    goto/16 :goto_1

    .line 449
    .end local v1           #capString:Ljava/lang/String;
    .end local v2           #capStrings:[Ljava/lang/String;
    :cond_12
    const-string v9, "--rlimit="

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 451
    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 454
    .local v6, limitStrings:[Ljava/lang/String;
    array-length v9, v6

    const/4 v10, 0x3

    if-eq v9, v10, :cond_13

    .line 455
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "--rlimit= should have 3 comma-delimited ints"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 458
    :cond_13
    array-length v9, v6

    new-array v8, v9, [I

    .line 460
    .local v8, rlimitTuple:[I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    array-length v9, v6

    if-ge v5, v9, :cond_14

    .line 461
    aget-object v9, v6, v5

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v8, v5

    .line 460
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 464
    :cond_14
    iget-object v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    if-nez v9, :cond_15

    .line 465
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    .line 468
    :cond_15
    iget-object v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 469
    .end local v5           #i:I
    .end local v6           #limitStrings:[Ljava/lang/String;
    .end local v8           #rlimitTuple:[I
    :cond_16
    const-string v9, "-classpath"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 470
    iget-object v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->classpath:Ljava/lang/String;

    if-eqz v9, :cond_17

    .line 471
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Duplicate arg specified"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 475
    :cond_17
    add-int/lit8 v3, v3, 0x1

    :try_start_0
    aget-object v9, p1, v3

    iput-object v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->classpath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 476
    :catch_0
    move-exception v4

    .line 477
    .local v4, ex:Ljava/lang/IndexOutOfBoundsException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "-classpath requires argument"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 480
    .end local v4           #ex:Ljava/lang/IndexOutOfBoundsException;
    :cond_18
    const-string v9, "--setgroups="

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 481
    iget-object v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    if-eqz v9, :cond_19

    .line 482
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Duplicate arg specified"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 486
    :cond_19
    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 489
    .local v7, params:[Ljava/lang/String;
    array-length v9, v7

    new-array v9, v9, [I

    iput-object v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    .line 491
    array-length v9, v7

    add-int/lit8 v5, v9, -0x1

    .restart local v5       #i:I
    :goto_3
    if-ltz v5, :cond_3

    .line 492
    iget-object v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    aget-object v10, v7, v5

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v9, v5

    .line 491
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 494
    .end local v5           #i:I
    .end local v7           #params:[Ljava/lang/String;
    :cond_1a
    const-string v9, "--invoke-with"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 495
    iget-object v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v9, :cond_1b

    .line 496
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Duplicate arg specified"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 500
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    :try_start_1
    aget-object v9, p1, v3

    iput-object v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 501
    :catch_1
    move-exception v4

    .line 502
    .restart local v4       #ex:Ljava/lang/IndexOutOfBoundsException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "--invoke-with requires argument"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 505
    .end local v4           #ex:Ljava/lang/IndexOutOfBoundsException;
    :cond_1c
    const-string v9, "--nice-name="

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 506
    iget-object v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    if-eqz v9, :cond_1d

    .line 507
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Duplicate arg specified"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 510
    :cond_1d
    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    goto/16 :goto_1

    .line 521
    .end local v0           #arg:Ljava/lang/String;
    :cond_1e
    array-length v9, p1

    sub-int/2addr v9, v3

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    .line 523
    iget-object v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    iget-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    array-length v10, v10

    invoke-static {p1, v3, v9, v13, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 525
    return-void
.end method
