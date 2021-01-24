fullname = 'full_path_to_your_wav_song.wav';
[y, Fs] = audioread(fullname);
PO=audioplayer(y,Fs); %the song is recorded as an object, since matlab hasn't got functions to find the song on your PC
i=1;
while(i>0)
switch input(' Operation: ') %switch in care putem executa operatiile pe melodie
    case 1
            % Play audio
            play(PO)
    case 2
            %Pause audio
            pause(PO)
    case 3
            %Resume audio
            resume(PO)
    case 4
            %Stop audio
            stop(PO)
    case 5 %acest intreg case 5 este pentru terminarea programului
            i=i-1;
            if(i<=0) 
                stop(PO);
                return;
            end
            return;
end
end