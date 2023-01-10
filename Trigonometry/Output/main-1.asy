if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="main-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

/* Geogebra to Asymptote conversion, documentation at artofproblemsolving.com/Wiki go to User:Azjps/geogebra */
import graph; size(19.cm);
real labelscalefactor = 0.5; /* changes label-to-point distance */
pen dps = linewidth(0.7) + fontsize(12); defaultpen(dps); /* default pen style */
pen dotstyle = black; /* point style */
real xmin = 3., xmax = 22., ymin = 1., ymax = 15.; /* image dimensions */
pen qqwuqq = rgb(0.,0.39215686274509803,0.); pen ffttww = rgb(1.,0.2,0.4); pen cqcqcq = rgb(0.7529411764705882,0.7529411764705882,0.7529411764705882); pen svsvsv = rgb(0.1450980392156863,0.1450980392156863,0.1450980392156863);

draw(arc((14.17652429837439,13.),0.806289054626084,-42.541123069009394,0.)--(14.17652429837439,13.)--cycle, linewidth(2.) + qqwuqq);
draw(arc((5.,3.),0.806289054626084,47.4588769309906,90.)--(5.,3.)--cycle, linewidth(2.) + qqwuqq);
draw(arc((5.,3.),0.9675468655513009,17.244598417298267,47.45887693099059)--(5.,3.)--cycle, linewidth(2.) + qqwuqq);
draw(arc((20.,7.656073372303976),0.806289054626084,-162.75540158270175,-90.)--(20.,7.656073372303976)--cycle, linewidth(2.) + qqwuqq);
draw((13.945237796871334,12.747958492798816)--(14.197279304072518,12.516671991295759)--(14.428565805575575,12.768713498496943)--(14.17652429837439,13.)--cycle, linewidth(2.) + ffttww);
/* draw grid of horizontal/vertical lines */
pen gridstyle = linewidth(0.7) + cqcqcq; real gridx = 1., gridy = 1.; /* grid intervals */
for(real i = ceil(xmin/gridx)*gridx; i <= floor(xmax/gridx)*gridx; i += gridx)
draw((i,ymin)--(i,ymax), gridstyle);
for(real i = ceil(ymin/gridy)*gridy; i <= floor(ymax/gridy)*gridy; i += gridy)
draw((xmin,i)--(xmax,i), gridstyle);
/* end grid */

Label laxis; laxis.p = fontsize(12);
xaxis(xmin, xmax,defaultpen+svsvsv, Ticks(laxis, Step = 1., Size = 2, NoZero),EndArrow(6), above = true);
yaxis(ymin, ymax,defaultpen+svsvsv, Ticks(laxis, Step = 1., Size = 2, NoZero),EndArrow(6), above = true); /* draws axes; NoZero hides '0' label */
/* draw figures */
draw((5.,13.)--(20.,13.), linewidth(2.));
draw((20.,13.)--(20.,3.), linewidth(2.));
draw((20.,3.)--(5.,3.), linewidth(2.));
draw((5.,3.)--(5.,13.), linewidth(2.));
draw((5.,3.)--(14.17652429837439,13.), linewidth(2.));
draw((14.17652429837439,13.)--(20.,7.656073372303976), linewidth(2.));
draw((20.,7.656073372303976)--(5.,3.), linewidth(2.));
/* dots and labels */
dot((5.,13.),dotstyle);
label("$A$", (4.739282402741391,13.122713162668823), NE * labelscalefactor);
dot((20.,13.),dotstyle);
label("$B$", (20.139403346099595,13.122713162668823), NE * labelscalefactor);
dot((20.,3.),dotstyle);
label("$C$", (20.107151783914553,2.6732070147147793), NE * labelscalefactor);
dot((5.,3.),dotstyle);
label("$D$", (4.707030840556347,2.6732070147147793), NE * labelscalefactor);
dot((20.,7.656073372303976),dotstyle);
label("$F$", (20.17165490828464,7.591570247933889), NE * labelscalefactor);
dot((14.17652429837439,13.),linewidth(4.pt) + dotstyle);
label("alpha ", (14.640511993549701,12.719568635355781), NE * labelscalefactor,qqwuqq);
label("alpha ", (5.126301148961911,3.414992944970776), NE * labelscalefactor,qqwuqq);
label("beta ", (5.577823019552517,3.3182382584156462), NE * labelscalefactor,qqwuqq);
label("alpha +beta ", (19.462120540213686,7.172299939528326), NE * labelscalefactor,qqwuqq);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
/* end of picture */
