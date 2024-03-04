%% Nash-Sutcliffe Coefficient
function E=DC(Observed,Modeled)
Observed=Observed(:);
Modeled=Modeled(:);
Observed(isnan(Observed))=0;
Modeled(isnan(Modeled))=0;
E=1-((sum((Observed-Modeled).^2)))/(sum((Observed-mean(Observed)).^2));
end