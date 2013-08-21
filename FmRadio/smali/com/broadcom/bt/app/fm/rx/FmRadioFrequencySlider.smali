.class public Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;
.super Landroid/view/View;
.source "FmRadioFrequencySlider.java"


# static fields
.field public static final FREQ_STEP:I = 0x14


# instance fields
.field bg:Landroid/graphics/Bitmap;

.field context:Landroid/content/Context;

.field freq:I

.field private height:I

.field private listener:Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySliderEventListener;

.field public mInAutoSearch:Z

.field public mInSearch:Z

.field public mIsEnabled:Z

.field private maxFreq:I

.field private maxX:I

.field private minFreq:I

.field private minX:I

.field slider:Landroid/graphics/Bitmap;

.field sliderX:I

.field private touchDownStartSliderX:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->slider:Landroid/graphics/Bitmap;

    .line 31
    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minFreq:I

    .line 32
    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->maxFreq:I

    .line 33
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->mInAutoSearch:Z

    .line 34
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->mInSearch:Z

    .line 36
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->mIsEnabled:Z

    .line 42
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->context:Landroid/content/Context;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->slider:Landroid/graphics/Bitmap;

    .line 31
    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minFreq:I

    .line 32
    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->maxFreq:I

    .line 33
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->mInAutoSearch:Z

    .line 34
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->mInSearch:Z

    .line 36
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->mIsEnabled:Z

    .line 47
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->context:Landroid/content/Context;

    .line 48
    return-void
.end method

.method private drawBackground()V
    .locals 15

    .prologue
    const/high16 v4, 0x41c0

    .line 71
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->slider:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020028

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->slider:Landroid/graphics/Bitmap;

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->slider:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minX:I

    .line 76
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->width:I

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minX:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->maxX:I

    .line 78
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minX:I

    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    .line 80
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->width:I

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->bg:Landroid/graphics/Bitmap;

    .line 81
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->bg:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 84
    .local v0, c:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 85
    .local v5, p:Landroid/graphics/Paint;
    const v1, -0x949ca8

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 87
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 89
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minFreq:I

    div-int/lit16 v1, v1, 0x1f4

    mul-int/lit16 v6, v1, 0x1f4

    .line 90
    .local v6, drawFreq:I
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minFreq:I

    if-ge v6, v1, :cond_1

    .line 91
    add-int/lit16 v6, v6, 0x1f4

    .line 93
    :cond_1
    :goto_0
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->maxFreq:I

    if-gt v6, v1, :cond_2

    .line 94
    div-int/lit8 v1, v6, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v6}, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->freqToX(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 95
    add-int/lit16 v6, v6, 0x1f4

    goto :goto_0

    .line 100
    :cond_2
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minFreq:I

    div-int/lit8 v1, v1, 0x32

    mul-int/lit8 v6, v1, 0x32

    .line 101
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minFreq:I

    if-ge v6, v1, :cond_3

    .line 102
    add-int/lit8 v6, v6, 0x32

    .line 104
    :cond_3
    const/16 v11, 0x1e

    .line 105
    .local v11, largeDivisionTopY:I
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->height:I

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->slider:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/lit8 v8, v1, -0x6

    .line 106
    .local v8, largeDivisionBottomY:I
    sub-int v10, v8, v11

    .line 107
    .local v10, largeDivisionSize:I
    add-int v1, v8, v11

    div-int/lit8 v9, v1, 0x2

    .line 108
    .local v9, largeDivisionCenter:I
    div-int/lit8 v1, v10, 0x3

    sub-int v13, v9, v1

    .line 109
    .local v13, smallDivisionTopY:I
    div-int/lit8 v1, v10, 0x3

    add-int v12, v9, v1

    .line 111
    .local v12, smallDivisionBottomY:I
    :goto_1
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->maxFreq:I

    if-gt v6, v1, :cond_6

    .line 112
    rem-int/lit16 v1, v6, 0x1f4

    if-nez v1, :cond_4

    const/4 v7, 0x1

    .line 113
    .local v7, largeDivision:Z
    :goto_2
    invoke-direct {p0, v6}, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->freqToX(I)I

    move-result v14

    .line 114
    .local v14, x:I
    if-eqz v7, :cond_5

    .line 115
    int-to-float v1, v14

    int-to-float v2, v11

    int-to-float v3, v14

    int-to-float v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 119
    :goto_3
    add-int/lit8 v6, v6, 0x32

    .line 120
    goto :goto_1

    .line 112
    .end local v7           #largeDivision:Z
    .end local v14           #x:I
    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    .line 117
    .restart local v7       #largeDivision:Z
    .restart local v14       #x:I
    :cond_5
    int-to-float v1, v14

    int-to-float v2, v13

    int-to-float v3, v14

    int-to-float v4, v12

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 122
    .end local v7           #largeDivision:Z
    .end local v14           #x:I
    :cond_6
    return-void
.end method

.method private freqToX(I)I
    .locals 5
    .parameter "freq"

    .prologue
    .line 209
    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->maxFreq:I

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minFreq:I

    sub-int v0, v3, v4

    .line 210
    .local v0, freqRange:I
    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->maxX:I

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minX:I

    sub-int v2, v3, v4

    .line 212
    .local v2, xRange:I
    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minX:I

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minFreq:I

    sub-int v4, p1, v4

    mul-int/2addr v4, v2

    div-int/2addr v4, v0

    add-int v1, v3, v4

    .line 214
    .local v1, x:I
    return v1
.end method

.method private xToFreq(I)I
    .locals 5
    .parameter "x"

    .prologue
    .line 196
    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->maxFreq:I

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minFreq:I

    sub-int v1, v3, v4

    .line 197
    .local v1, freqRange:I
    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->maxX:I

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minX:I

    sub-int v2, v3, v4

    .line 199
    .local v2, xRange:I
    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minFreq:I

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minX:I

    sub-int v4, p1, v4

    mul-int/2addr v4, v1

    div-int/2addr v4, v2

    add-int v0, v3, v4

    .line 202
    .local v0, freq:I
    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minFreq:I

    sub-int v3, v0, v3

    add-int/lit8 v3, v3, 0xa

    div-int/lit8 v3, v3, 0x14

    mul-int/lit8 v3, v3, 0x14

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minFreq:I

    add-int v0, v3, v4

    .line 203
    const/16 v3, 0x2a30

    if-le v0, v3, :cond_0

    .line 204
    const/16 v0, 0x2a30

    .line 205
    :cond_0
    return v0
.end method


# virtual methods
.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 146
    const/16 v0, 0x4b

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 125
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->bg:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->bg:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 129
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->slider:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->slider:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->height:I

    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->slider:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 51
    iput p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->width:I

    .line 52
    iput p2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->height:I

    .line 53
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minFreq:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->maxFreq:I

    if-lez v0, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->drawBackground()V

    .line 55
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->freq:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->freqToX(I)I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    .line 56
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->invalidate()V

    .line 58
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 150
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->bg:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v3

    .line 154
    :cond_1
    iget-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->mInAutoSearch:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->mInSearch:Z

    if-nez v1, :cond_0

    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 158
    .local v0, action:I
    if-nez v0, :cond_5

    .line 159
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->touchDownStartSliderX:I

    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    .line 162
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minX:I

    if-ge v1, v2, :cond_4

    .line 163
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minX:I

    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    .line 166
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->listener:Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySliderEventListener;

    if-eqz v1, :cond_3

    .line 167
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->listener:Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySliderEventListener;

    invoke-interface {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySliderEventListener;->onSliderDown()V

    .line 190
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->invalidate()V

    goto :goto_0

    .line 164
    :cond_4
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->maxX:I

    if-le v1, v2, :cond_2

    .line 165
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->maxX:I

    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    goto :goto_1

    .line 169
    :cond_5
    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    .line 172
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minX:I

    if-ge v1, v2, :cond_7

    .line 173
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minX:I

    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    .line 176
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->listener:Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySliderEventListener;

    if-eqz v1, :cond_3

    .line 177
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->listener:Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySliderEventListener;

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    invoke-direct {p0, v2}, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->xToFreq(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySliderEventListener;->onSliderDrag(I)V

    goto :goto_2

    .line 174
    :cond_7
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->maxX:I

    if-le v1, v2, :cond_6

    .line 175
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->maxX:I

    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    goto :goto_3

    .line 179
    :cond_8
    if-ne v0, v3, :cond_9

    .line 180
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    invoke-direct {p0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->xToFreq(I)I

    move-result v1

    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->freq:I

    .line 181
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->listener:Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySliderEventListener;

    if-eqz v1, :cond_3

    .line 182
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->listener:Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySliderEventListener;

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->freq:I

    invoke-interface {v1, v2}, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySliderEventListener;->onSliderSet(I)V

    goto :goto_2

    .line 183
    :cond_9
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 185
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->touchDownStartSliderX:I

    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    .line 186
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->listener:Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySliderEventListener;

    if-eqz v1, :cond_3

    .line 187
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->listener:Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySliderEventListener;

    invoke-interface {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySliderEventListener;->onSliderCancel()V

    goto :goto_2
.end method

.method public setFreq(I)V
    .locals 2
    .parameter "freq"

    .prologue
    .line 135
    iput p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->freq:I

    .line 136
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->freqToX(I)I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    .line 137
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minX:I

    if-ge v0, v1, :cond_1

    .line 138
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minX:I

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    .line 141
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->invalidate()V

    .line 143
    return-void

    .line 139
    :cond_1
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->maxX:I

    if-le v0, v1, :cond_0

    .line 140
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->maxX:I

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    goto :goto_0
.end method

.method public setFrequencyRange(II)V
    .locals 1
    .parameter "minFreq"
    .parameter "maxFreq"

    .prologue
    .line 61
    iput p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->minFreq:I

    .line 62
    iput p2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->maxFreq:I

    .line 63
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->width:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->height:I

    if-lez v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->drawBackground()V

    .line 65
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->freq:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->freqToX(I)I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->sliderX:I

    .line 66
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->invalidate()V

    .line 68
    :cond_0
    return-void
.end method

.method public setListener(Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySliderEventListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->listener:Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySliderEventListener;

    .line 220
    return-void
.end method
