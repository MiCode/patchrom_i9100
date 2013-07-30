.class Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;
.super Landroid/view/View;
.source "ASensorSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/ASensorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ASensorSettingsView"
.end annotation


# instance fields
.field image:Landroid/graphics/drawable/Drawable;

.field mRadius:I

.field mState:I

.field sx:I

.field sy:I

.field final synthetic this$0:Lcom/android/sec_settings/ASensorSettings;


# direct methods
.method public constructor <init>(Lcom/android/sec_settings/ASensorSettings;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/sec_settings/ASensorSettings;

    .line 344
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 335
    iget-object v0, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/sec_settings/ASensorSettings;

    #getter for: Lcom/android/sec_settings/ASensorSettings;->CENTER_X:I
    invoke-static {v0}, Lcom/android/sec_settings/ASensorSettings;->access$500(Lcom/android/sec_settings/ASensorSettings;)I

    move-result v0

    iget-object v1, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/sec_settings/ASensorSettings;

    #getter for: Lcom/android/sec_settings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v1}, Lcom/android/sec_settings/ASensorSettings;->access$600(Lcom/android/sec_settings/ASensorSettings;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->sx:I

    .line 336
    iget-object v0, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/sec_settings/ASensorSettings;

    #getter for: Lcom/android/sec_settings/ASensorSettings;->CENTER_Y:I
    invoke-static {v0}, Lcom/android/sec_settings/ASensorSettings;->access$700(Lcom/android/sec_settings/ASensorSettings;)I

    move-result v0

    iget-object v1, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/sec_settings/ASensorSettings;

    #getter for: Lcom/android/sec_settings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v1}, Lcom/android/sec_settings/ASensorSettings;->access$600(Lcom/android/sec_settings/ASensorSettings;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->sy:I

    .line 337
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->mState:I

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->image:Landroid/graphics/drawable/Drawable;

    .line 345
    return-void
.end method

.method static synthetic access$200(Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->updateState(I)V

    return-void
.end method

.method private updateState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 348
    iput p1, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->mState:I

    .line 349
    return-void
.end method


# virtual methods
.method public getPoint([F)[F
    .locals 5
    .parameter "position"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 365
    iget v0, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->sx:I

    iget-object v1, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/sec_settings/ASensorSettings;

    #getter for: Lcom/android/sec_settings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v1}, Lcom/android/sec_settings/ASensorSettings;->access$600(Lcom/android/sec_settings/ASensorSettings;)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    aput v0, p1, v3

    .line 366
    iget v0, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->sy:I

    iget-object v1, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/sec_settings/ASensorSettings;

    #getter for: Lcom/android/sec_settings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v1}, Lcom/android/sec_settings/ASensorSettings;->access$600(Lcom/android/sec_settings/ASensorSettings;)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    aput v0, p1, v4

    .line 367
    const-string v0, "ASensorSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRect position[0]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", position[1]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p1, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const-wide/high16 v8, 0x4000

    .line 372
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    const/4 v0, 0x3

    if-ge v6, v0, :cond_0

    .line 373
    add-int/lit8 v0, v6, 0x1

    iget-object v1, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/sec_settings/ASensorSettings;

    #getter for: Lcom/android/sec_settings/ASensorSettings;->mBackgroundRadian:I
    invoke-static {v1}, Lcom/android/sec_settings/ASensorSettings;->access$900(Lcom/android/sec_settings/ASensorSettings;)I

    move-result v1

    mul-int v7, v0, v1

    .line 374
    .local v7, rad:I
    iget-object v0, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/sec_settings/ASensorSettings;

    invoke-virtual {v0}, Lcom/android/sec_settings/ASensorSettings;->getLcdWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0xa

    if-le v7, v0, :cond_1

    .line 378
    .end local v7           #rad:I
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/sec_settings/ASensorSettings;

    #getter for: Lcom/android/sec_settings/ASensorSettings;->CENTER_X:I
    invoke-static {v0}, Lcom/android/sec_settings/ASensorSettings;->access$500(Lcom/android/sec_settings/ASensorSettings;)I

    move-result v0

    iget-object v1, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/sec_settings/ASensorSettings;

    #getter for: Lcom/android/sec_settings/ASensorSettings;->mHorizontalLine:I
    invoke-static {v1}, Lcom/android/sec_settings/ASensorSettings;->access$1100(Lcom/android/sec_settings/ASensorSettings;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/sec_settings/ASensorSettings;

    #getter for: Lcom/android/sec_settings/ASensorSettings;->CENTER_Y:I
    invoke-static {v0}, Lcom/android/sec_settings/ASensorSettings;->access$700(Lcom/android/sec_settings/ASensorSettings;)I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/sec_settings/ASensorSettings;

    #getter for: Lcom/android/sec_settings/ASensorSettings;->CENTER_X:I
    invoke-static {v0}, Lcom/android/sec_settings/ASensorSettings;->access$500(Lcom/android/sec_settings/ASensorSettings;)I

    move-result v0

    iget-object v3, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/sec_settings/ASensorSettings;

    #getter for: Lcom/android/sec_settings/ASensorSettings;->mHorizontalLine:I
    invoke-static {v3}, Lcom/android/sec_settings/ASensorSettings;->access$1100(Lcom/android/sec_settings/ASensorSettings;)I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/sec_settings/ASensorSettings;

    #getter for: Lcom/android/sec_settings/ASensorSettings;->CENTER_Y:I
    invoke-static {v0}, Lcom/android/sec_settings/ASensorSettings;->access$700(Lcom/android/sec_settings/ASensorSettings;)I

    move-result v0

    int-to-float v4, v0

    invoke-static {}, Lcom/android/sec_settings/ASensorSettings;->access$1000()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 379
    iget-object v0, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/sec_settings/ASensorSettings;

    #getter for: Lcom/android/sec_settings/ASensorSettings;->CENTER_X:I
    invoke-static {v0}, Lcom/android/sec_settings/ASensorSettings;->access$500(Lcom/android/sec_settings/ASensorSettings;)I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/sec_settings/ASensorSettings;

    #getter for: Lcom/android/sec_settings/ASensorSettings;->CENTER_Y:I
    invoke-static {v0}, Lcom/android/sec_settings/ASensorSettings;->access$700(Lcom/android/sec_settings/ASensorSettings;)I

    move-result v0

    iget-object v2, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/sec_settings/ASensorSettings;

    #getter for: Lcom/android/sec_settings/ASensorSettings;->mVerticalLine:I
    invoke-static {v2}, Lcom/android/sec_settings/ASensorSettings;->access$1200(Lcom/android/sec_settings/ASensorSettings;)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/sec_settings/ASensorSettings;

    #getter for: Lcom/android/sec_settings/ASensorSettings;->CENTER_X:I
    invoke-static {v0}, Lcom/android/sec_settings/ASensorSettings;->access$500(Lcom/android/sec_settings/ASensorSettings;)I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/sec_settings/ASensorSettings;

    #getter for: Lcom/android/sec_settings/ASensorSettings;->CENTER_Y:I
    invoke-static {v0}, Lcom/android/sec_settings/ASensorSettings;->access$700(Lcom/android/sec_settings/ASensorSettings;)I

    move-result v0

    iget-object v4, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/sec_settings/ASensorSettings;

    #getter for: Lcom/android/sec_settings/ASensorSettings;->mVerticalLine:I
    invoke-static {v4}, Lcom/android/sec_settings/ASensorSettings;->access$1200(Lcom/android/sec_settings/ASensorSettings;)I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    invoke-static {}, Lcom/android/sec_settings/ASensorSettings;->access$1000()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 381
    iget v0, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 382
    invoke-virtual {p0}, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020306

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->image:Landroid/graphics/drawable/Drawable;

    .line 389
    :goto_1
    iget-object v0, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->image:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->sx:I

    iget v2, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->sy:I

    iget v3, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->sx:I

    iget-object v4, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/sec_settings/ASensorSettings;

    #getter for: Lcom/android/sec_settings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v4}, Lcom/android/sec_settings/ASensorSettings;->access$600(Lcom/android/sec_settings/ASensorSettings;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->sy:I

    iget-object v5, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/sec_settings/ASensorSettings;

    #getter for: Lcom/android/sec_settings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v5}, Lcom/android/sec_settings/ASensorSettings;->access$600(Lcom/android/sec_settings/ASensorSettings;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 391
    iget-object v0, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 392
    const-string v0, "ASensorSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraw sx: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->sx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->sy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    return-void

    .line 376
    .restart local v7       #rad:I
    :cond_1
    iget-object v0, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/sec_settings/ASensorSettings;

    #getter for: Lcom/android/sec_settings/ASensorSettings;->CENTER_X:I
    invoke-static {v0}, Lcom/android/sec_settings/ASensorSettings;->access$500(Lcom/android/sec_settings/ASensorSettings;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/sec_settings/ASensorSettings;

    #getter for: Lcom/android/sec_settings/ASensorSettings;->CENTER_Y:I
    invoke-static {v1}, Lcom/android/sec_settings/ASensorSettings;->access$700(Lcom/android/sec_settings/ASensorSettings;)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v7

    invoke-static {}, Lcom/android/sec_settings/ASensorSettings;->access$1000()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 372
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 384
    .end local v7           #rad:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020307

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->image:Landroid/graphics/drawable/Drawable;

    .line 385
    sget v0, Lcom/android/sec_settings/ASensorSettings;->ani_gap_x:F

    sget v1, Lcom/android/sec_settings/ASensorSettings;->ani_count:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sget v2, Lcom/android/sec_settings/ASensorSettings;->ani_gap_y:F

    sget v3, Lcom/android/sec_settings/ASensorSettings;->ani_count:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->mRadius:I

    .line 386
    iget-object v0, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/sec_settings/ASensorSettings;

    #getter for: Lcom/android/sec_settings/ASensorSettings;->CENTER_X:I
    invoke-static {v0}, Lcom/android/sec_settings/ASensorSettings;->access$500(Lcom/android/sec_settings/ASensorSettings;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/sec_settings/ASensorSettings;

    #getter for: Lcom/android/sec_settings/ASensorSettings;->CENTER_Y:I
    invoke-static {v1}, Lcom/android/sec_settings/ASensorSettings;->access$700(Lcom/android/sec_settings/ASensorSettings;)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->mRadius:I

    iget-object v3, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/sec_settings/ASensorSettings;

    #getter for: Lcom/android/sec_settings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v3}, Lcom/android/sec_settings/ASensorSettings;->access$600(Lcom/android/sec_settings/ASensorSettings;)I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcom/android/sec_settings/ASensorSettings;->ani_count:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {}, Lcom/android/sec_settings/ASensorSettings;->access$1300()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 387
    const-string v0, "ASensorSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraw mRadius "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->mRadius:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public setPoint(FF)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide/high16 v5, 0x4000

    .line 352
    const-string v1, "ASensorSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRect x: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", y: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    float-to-double v1, p1

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    float-to-double v3, p2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v0, v1

    .line 354
    .local v0, lengthPoint:F
    iget-object v1, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/sec_settings/ASensorSettings;

    #getter for: Lcom/android/sec_settings/ASensorSettings;->CIRCLE_RADIUS:I
    invoke-static {v1}, Lcom/android/sec_settings/ASensorSettings;->access$800(Lcom/android/sec_settings/ASensorSettings;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/sec_settings/ASensorSettings;

    #getter for: Lcom/android/sec_settings/ASensorSettings;->CIRCLE_RADIUS:I
    invoke-static {v1}, Lcom/android/sec_settings/ASensorSettings;->access$800(Lcom/android/sec_settings/ASensorSettings;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    div-float p1, v1, v0

    .line 356
    iget-object v1, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/sec_settings/ASensorSettings;

    #getter for: Lcom/android/sec_settings/ASensorSettings;->CIRCLE_RADIUS:I
    invoke-static {v1}, Lcom/android/sec_settings/ASensorSettings;->access$800(Lcom/android/sec_settings/ASensorSettings;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    div-float p2, v1, v0

    .line 359
    :cond_0
    iget-object v1, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/sec_settings/ASensorSettings;

    #getter for: Lcom/android/sec_settings/ASensorSettings;->CENTER_X:I
    invoke-static {v1}, Lcom/android/sec_settings/ASensorSettings;->access$500(Lcom/android/sec_settings/ASensorSettings;)I

    move-result v1

    iget-object v2, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/sec_settings/ASensorSettings;

    #getter for: Lcom/android/sec_settings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v2}, Lcom/android/sec_settings/ASensorSettings;->access$600(Lcom/android/sec_settings/ASensorSettings;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->sx:I

    .line 360
    iget-object v1, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/sec_settings/ASensorSettings;

    #getter for: Lcom/android/sec_settings/ASensorSettings;->CENTER_Y:I
    invoke-static {v1}, Lcom/android/sec_settings/ASensorSettings;->access$700(Lcom/android/sec_settings/ASensorSettings;)I

    move-result v1

    iget-object v2, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/sec_settings/ASensorSettings;

    #getter for: Lcom/android/sec_settings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v2}, Lcom/android/sec_settings/ASensorSettings;->access$600(Lcom/android/sec_settings/ASensorSettings;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->sy:I

    .line 362
    return-void
.end method
