.class Lcom/android/settings/GSensorSettings$GSensorSettingsView;
.super Landroid/view/View;
.source "GSensorSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GSensorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GSensorSettingsView"
.end annotation


# instance fields
.field image:Landroid/graphics/drawable/Drawable;

.field mRadius:I

.field mState:I

.field sx:I

.field sy:I

.field final synthetic this$0:Lcom/android/settings/GSensorSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/GSensorSettings;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->this$0:Lcom/android/settings/GSensorSettings;

    .line 317
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 306
    iget-object v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->CENTER_X:I
    invoke-static {v0}, Lcom/android/settings/GSensorSettings;->access$300(Lcom/android/settings/GSensorSettings;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->ICON_RADIUS:I
    invoke-static {v1}, Lcom/android/settings/GSensorSettings;->access$400(Lcom/android/settings/GSensorSettings;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->sx:I

    .line 308
    iget-object v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->CENTER_Y:I
    invoke-static {v0}, Lcom/android/settings/GSensorSettings;->access$500(Lcom/android/settings/GSensorSettings;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->ICON_RADIUS:I
    invoke-static {v1}, Lcom/android/settings/GSensorSettings;->access$400(Lcom/android/settings/GSensorSettings;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->sy:I

    .line 310
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mState:I

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->image:Landroid/graphics/drawable/Drawable;

    .line 318
    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/GSensorSettings$GSensorSettingsView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->updateState(I)V

    return-void
.end method

.method private updateState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 321
    iput p1, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mState:I

    .line 322
    return-void
.end method


# virtual methods
.method public getPoint([F)[F
    .locals 3
    .parameter "position"

    .prologue
    .line 336
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->sx:I

    iget-object v2, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->ICON_RADIUS:I
    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$400(Lcom/android/settings/GSensorSettings;)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, p1, v0

    .line 337
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->sy:I

    iget-object v2, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->ICON_RADIUS:I
    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$400(Lcom/android/settings/GSensorSettings;)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, p1, v0

    .line 340
    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const-wide/high16 v8, 0x4000

    .line 345
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    const/4 v0, 0x3

    if-ge v6, v0, :cond_0

    .line 346
    add-int/lit8 v0, v6, 0x1

    iget-object v1, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->mBackgroundRadian:I
    invoke-static {v1}, Lcom/android/settings/GSensorSettings;->access$700(Lcom/android/settings/GSensorSettings;)I

    move-result v1

    mul-int v7, v0, v1

    .line 347
    .local v7, rad:I
    iget-object v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->this$0:Lcom/android/settings/GSensorSettings;

    invoke-virtual {v0}, Lcom/android/settings/GSensorSettings;->getLcdWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0xa

    if-le v7, v0, :cond_2

    .line 351
    .end local v7           #rad:I
    :cond_0
    iget-object v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->CENTER_X:I
    invoke-static {v0}, Lcom/android/settings/GSensorSettings;->access$300(Lcom/android/settings/GSensorSettings;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->mHorizontalLine:I
    invoke-static {v1}, Lcom/android/settings/GSensorSettings;->access$900(Lcom/android/settings/GSensorSettings;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->CENTER_Y:I
    invoke-static {v0}, Lcom/android/settings/GSensorSettings;->access$500(Lcom/android/settings/GSensorSettings;)I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->CENTER_X:I
    invoke-static {v0}, Lcom/android/settings/GSensorSettings;->access$300(Lcom/android/settings/GSensorSettings;)I

    move-result v0

    iget-object v3, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->mHorizontalLine:I
    invoke-static {v3}, Lcom/android/settings/GSensorSettings;->access$900(Lcom/android/settings/GSensorSettings;)I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->CENTER_Y:I
    invoke-static {v0}, Lcom/android/settings/GSensorSettings;->access$500(Lcom/android/settings/GSensorSettings;)I

    move-result v0

    int-to-float v4, v0

    invoke-static {}, Lcom/android/settings/GSensorSettings;->access$800()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 352
    iget-object v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->CENTER_X:I
    invoke-static {v0}, Lcom/android/settings/GSensorSettings;->access$300(Lcom/android/settings/GSensorSettings;)I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->CENTER_Y:I
    invoke-static {v0}, Lcom/android/settings/GSensorSettings;->access$500(Lcom/android/settings/GSensorSettings;)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->mVerticalLine:I
    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$1000(Lcom/android/settings/GSensorSettings;)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->CENTER_X:I
    invoke-static {v0}, Lcom/android/settings/GSensorSettings;->access$300(Lcom/android/settings/GSensorSettings;)I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->CENTER_Y:I
    invoke-static {v0}, Lcom/android/settings/GSensorSettings;->access$500(Lcom/android/settings/GSensorSettings;)I

    move-result v0

    iget-object v4, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->mVerticalLine:I
    invoke-static {v4}, Lcom/android/settings/GSensorSettings;->access$1000(Lcom/android/settings/GSensorSettings;)I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    invoke-static {}, Lcom/android/settings/GSensorSettings;->access$800()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 355
    iget v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 356
    invoke-virtual {p0}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020306

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->image:Landroid/graphics/drawable/Drawable;

    .line 366
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->image:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->sx:I

    iget v2, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->sy:I

    iget v3, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->sx:I

    iget-object v4, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->ICON_RADIUS:I
    invoke-static {v4}, Lcom/android/settings/GSensorSettings;->access$400(Lcom/android/settings/GSensorSettings;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->sy:I

    iget-object v5, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->ICON_RADIUS:I
    invoke-static {v5}, Lcom/android/settings/GSensorSettings;->access$400(Lcom/android/settings/GSensorSettings;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 367
    iget-object v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 369
    return-void

    .line 349
    .restart local v7       #rad:I
    :cond_2
    iget-object v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->CENTER_X:I
    invoke-static {v0}, Lcom/android/settings/GSensorSettings;->access$300(Lcom/android/settings/GSensorSettings;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->CENTER_Y:I
    invoke-static {v1}, Lcom/android/settings/GSensorSettings;->access$500(Lcom/android/settings/GSensorSettings;)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v7

    invoke-static {}, Lcom/android/settings/GSensorSettings;->access$800()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 345
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 357
    .end local v7           #rad:I
    :cond_3
    iget v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 360
    sget v0, Lcom/android/settings/GSensorSettings;->ani_gap_x:F

    sget v1, Lcom/android/settings/GSensorSettings;->ani_count:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sget v2, Lcom/android/settings/GSensorSettings;->ani_gap_y:F

    sget v3, Lcom/android/settings/GSensorSettings;->ani_count:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mRadius:I

    .line 362
    iget-object v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->CENTER_X:I
    invoke-static {v0}, Lcom/android/settings/GSensorSettings;->access$300(Lcom/android/settings/GSensorSettings;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->CENTER_Y:I
    invoke-static {v1}, Lcom/android/settings/GSensorSettings;->access$500(Lcom/android/settings/GSensorSettings;)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mRadius:I

    iget-object v3, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->ICON_RADIUS:I
    invoke-static {v3}, Lcom/android/settings/GSensorSettings;->access$400(Lcom/android/settings/GSensorSettings;)I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcom/android/settings/GSensorSettings;->ani_count:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {}, Lcom/android/settings/GSensorSettings;->access$1100()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 364
    const-string v0, "GSensorSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraw mRadius "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mRadius:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method protected setImage(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 372
    const/16 v0, 0x20

    if-lt p1, v0, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02030a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->image:Landroid/graphics/drawable/Drawable;

    .line 378
    :goto_0
    return-void

    .line 374
    :cond_0
    const/16 v0, 0x10

    if-lt p1, v0, :cond_1

    .line 375
    invoke-virtual {p0}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020309

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->image:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 377
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020308

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->image:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method
