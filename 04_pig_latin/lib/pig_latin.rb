def begin_vowel word, num=0
    vowels = ['a','e','i','o','u']
    num_letter = word.chars[num]
    vowelletter = ''
    vowels.each do |let|
        if let == num_letter
        vowelletter = true
        break
        else
        vowelletter = false
        end
    end
    vowelletter
end

def qu word
  word.chars.shift(2).join == 'qu'
end

def xqu word
    word.chars[1,2].join == 'qu'
end

def pigger word, shift
  word = word.chars
  word = (word.push word.shift(shift)).join + 'ay'
end

def translate phrase
  phrase = phrase.split(' ')
    pig = []
  phrase.each do |word|
    if begin_vowel(word)
      word = word + 'ay'
    else
        if !begin_vowel(word, 1) || qu(word)
            if !begin_vowel(word, 2) || xqu(word)
            word = pigger(word,3)
            else    
            word = pigger(word,2)
            end
        else
            word = pigger(word,1)
        end
    end
  pig.push word 
  end
  pig.join(' ')
end

